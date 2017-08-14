# ordinal.R contains analyzers and summarizers for ordinal dependent
# variables.

#' @include generic.R
require("Kendall")

# replaces "N/A" by NA...actually has side effects, but is idempotent
# (fortunately)
na.cut.ordinal = function(theframe, thefactortoken) {
  thetype = attributes(theframe)$type[thefactortoken]
  if (thetype=="ordinalNA3" || thetype=="ordinalNA5") {
    theframe[theframe[,thefactortoken]=="N/A",thefactortoken] <- NA
  }
  return(theframe[,thefactortoken])
}

#' Summarizing ordinal responses
#'
#' \code{summarize.ordinal} provides summary statistics for an ordinal
#' variable.
#'
#' @param theframe the frame to which the factor belongs
#' @param thefactortoken the index of the factor
#' @return a labelled list of summary results:
#' \description{
#'  \item{dependent}{the question being summarized}
#'  \item{N}{the number of nontrivial responses}
#'  \item{midquartiles}{the lower, median, and upper quartiles}
#' }
#' @export
summarize.ordinal = function(theframe, thefactortoken) {
  thefactor = na.cut.ordinal(theframe,thefactortoken)
  thequestionlabel = attributes(theframe)$question.labels[thefactortoken]
  thequantiles = levels(thefactor)[quantile(as.numeric(thefactor), 
                                            probs=seq(0.25,0.75,0.25),
                                            na.rm = TRUE)]
  theN = theNOf(theframe, thefactortoken)
  return(list(dependent = thequestionlabel, 
              N = theN, 
              midquartiles = thequantiles))
}

#' Analyzing ordinal dependent variables
#' 
#' \code{analyze.ordinal} provides a p-value for a test of correlation
#' between an ordinal dependent variable and either a categorical or ordinal
#' independent variable.
#'
#' @param theframe the frame to which the factors belong
#' @param theindependentfactortoken the index of the independent variable
#' @param thedependentfactortoken the index of the dependent variable
#' @return the p value of the test (either Kruskal or Kendall).
#' @export
analyze.ordinal = function(theframe,
                           theindependentfactortoken,
                           thedependentfactortoken) {
  type.independent <- attributes(theframe)$type[theindependentfactortoken]
  type.dependent <- attributes(theframe)$type[thedependentfactortoken]
  thedependentfactor <- na.cut.ordinal(theframe, thedependentfactortoken)
  theindependentfactor <- theframe[,theindependentfactortoken]
  thetable <-  theindependentfactor ~ thedependentfactor
  co <- function() {kruskal.test(thetable)$p.value}
  oo <- function() {Kendall(thedependentfactor,
                            theindependentfactor)$sl}
  thetest <- ifelse(type.independent == "categorical", co(),
                    ifelse(type.independent %in% ordinal.types, oo(),
                           NA))
  return(thetest)
}
