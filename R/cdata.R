#' @include generic.R
#' Responses to a character data question.
#'
#' \code{summarize.cdata} produces a list with summary statistics to a question
#' with character data responses.
#' 
#' @param theframe the frame to which the question belongs
#' @param thefactortoken the factor for which to produce the summary
#' @return A labelled list with three elements:
#' \describe{
#'    \item{\code{questionlabel}}{the label of the question}
#'    \item{\code{N}}{the number of nontrivial entries}
#'    \item{\code{stringlist}}{the content of the nontrivial entries}
#'  }
#' @export
summarize.cdata = function(theframe, thefactortoken) {
  thefactor = theframe[,thefactortoken]
  thequestionlabel = attributes(theframe)$question.labels[thefactortoken]
  theN = theNOf(theframe, thefactortoken)
  theinhabitedstrings = theframe[!is.na(theframe[,thefactortoken]),
                                 thefactortoken]
  outputstring = function() {cat(c(thequestionlabel, 
                       theN,
                       cat(theinhabitedstrings,sep="\n\n")),sep="\n") }
  outputlist =
    list(questionlabel=thequestionlabel,
         N=theN,
         stringlist=theinhabitedstrings)
  return(outputlist)
}
