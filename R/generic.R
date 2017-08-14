# generic.R contains theNOf to count the number of nontrivial responses.

#' Counting nontrivial responses
#' 
#' \code{theNOf} counts the number of nontrivial responses to a question.
#'
#' @param theframe the frame to which a question belongs
#' @param thefactortoken the index of the factor
#' @return the number of nontrivial questions
#' @export
theNOf = function(theframe, thefactortoken) {
  if (attributes(theframe)$type[thefactortoken] %in% ordinal.types) {
    theframe[theframe[,thefactortoken]=="N/A",thefactortoken] <- NA
  }
  theinhabited = !is.na(theframe[,thefactortoken])
  n = length(theframe[theinhabited,thefactortoken])
  return(n)
}
