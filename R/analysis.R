# analysis.R has all the analysis functions in it.

#' @include cdata.R
#' @include categorical.R
#' @include ordinal.R

# analyze is the fake-overloaded vectorized function
#   metadata should be ignored.
#   boilerplate too.
#   cdata
#     summary: is always significant, and should get dumped to stdout.
#   categorical
#     summary:
#     v categorical:
#     v ordinal:
#   ordinal5
#     summary:
#     v categorical:
#     v ordinal:
#   ordinal7
#   ordinalNA3
#   ordinalNA5
#   numeric
#     summary:
#     v categorical:
#     v ordinal
# needs logging library.

#' Summary statistics for generic factors.
#'
#' \code{summarize} takes a data frame and an index and produces the desired summary statistic
#' for that index, depending on its type. At present, only categorical, ordinal,
#' and character data produce results, but it works otherwise.
#'
#' @param theframe the data frame to which the index belongs
#' @param thefactortoken the index of the question to produce a summary for
#' @return a list with summary statistics (which depends on the type)
#' @export
summarize = function(theframe, thefactortoken) {
  thetype <- attributes(theframe)$type[thefactortoken]
  output <- NA
  if(thetype == "cdata") output <- summarize.cdata(theframe, 
                                                   thefactortoken)
  if(thetype == "categorical") output <- summarize.categorical(theframe,
                                                               thefactortoken)
  if(thetype %in% ordinal.types) output <- summarize.ordinal(theframe,
                                                             thefactortoken)
  return(output)
}
#' Summarizing multiple factors
#'
#' \code{summarizeAll} takes a data frame and a vector of indices and produces summary statistics
#' for all indices.
#' 
#' @param theframe the data frame to which the indices belong
#' @param thetokenvector the vector of indices to be summarized
#' @return a vector of lists containing summary statistics
#' @export
summarizeAll = function(theframe, thetokenvector) {
  thesummaryvector = NULL
  for (i in thetokenvector) {
    thesummaryvector = c(thesummaryvector, summarize(theframe, i))
  }
  return(thesummaryvector)
}
