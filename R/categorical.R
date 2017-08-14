# categorical.R contains analyzers and summarizers for categorical dependent
# variables.

#' @include generic.R
# Shamelessly lifted (and subsequently edited) from
# http://stackoverflow.com/questions/2547402/
# standard-library-function-in-r-for-finding-the-mode
Mode <- function(x) {
  ux <- unique(x[!is.na(x)])
  themodelabel = attributes(ux)$levels[which.max(tabulate(match(x, ux)))]
  themodevalue = max(tabulate(match(x, ux)))
  return(c(themodelabel, themodevalue))
}

#' Summarizing categorical responses
#'
#' \code{summarize.categorical} provides summary statistics for a categorical
#' variable.
#'
#' @param theframe the frame to which the factor belongs
#' @param thefactortoken the index of the factor
#' @return a labelled list of summary results:
#' \description{
#'  \item{dependent}{the question being summarized}
#'  \item{N}{the number of nontrivial responses}
#'  \item{mode}{the most populous response}
#' }
#' @export
summarize.categorical = function(theframe, thefactortoken) {
  thefactor = theframe[,thefactortoken]
  thequestionlabel = attributes(theframe)$question.labels[thefactortoken]
  themode = Mode(thefactor)
  theN = theNOf(theframe, thefactortoken)
  return(list(dependent = thequestionlabel, N = theN, mode = themode))
}

#' Analyzing categorical dependent variables
#' 
#' \code{analyze.categorical} provides a p-value for a test of correlation
#' between a categorical dependent variable and either a categorical or ordinal
#' independent variable.
#'
#' @param theframe the frame to which the factors belong
#' @param theindependentfactortoken the index of the independent variable
#' @param thedependentfactortoken the index of the dependent variable
#' @return the p value of the test (either Fisher or Kruskal).
#' @export
analyze.categorical <- function(theframe, theindependentfactortoken,
                                thedependentfactortoken) {
  type.independent <- attributes(theframe)$type[theindependentfactortoken]
  type.dependent <- attributes(theframe)$type[thedependentfactortoken]
  theindependentfactor = theframe[,theindependentfactortoken]
  thedependentfactor = theframe[,thedependentfactortoken]
  thetable <-  theindependentfactor ~ thedependentfactor
  cc <- function() {fisher.test(theindependentfactor, thedependentfactor)$p.value}
  oc <- function() {kruskal.test(thetable)$p.value}
  thetest <- ifelse(type.independent == "categorical", cc(),
                    ifelse(type.independent %in% ordinal.types, oc(),
                           NA))
  return(thetest)
}
