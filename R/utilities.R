# utilities.R  has shred, which destroys the original data.frame.
library(logging)
basicConfig()

#' @include types.R

#' The annotated data frame.
#'
#' \code{clean} annotates a frame with its type, section, and question labels.
#'
#' @param oldframe the old data frame
#' @param svector the vector of section labels
#' @param tvector the vector of factor type labels
#' @return a new data frame with the added attributes "section", "type", and
#'   "question.labels", the latter being inferred from the frame itself
clean = function(oldframe, svector, tvector) {
  framename <- deparse(substitute(oldframe))
  newframe = as.data.frame(oldframe)[,allfields]
  attributes(newframe)$section = svector
  attributes(newframe)$type = tvector
  attributes(newframe)$question.labels = attributes(oldframe)$variable.labels[allfields]
  loginfo('Copy of frame "%s" with section and type annotations produced.', framename)
  return(newframe)
}

#' Destroying tokens
#'
#' \code{shred} completely destroys the specified token.
#'
#' @param token the token to be destroyed
#' @return nothing
shred = function(token) { # NOT A FUNCTION, R
  tokenname <- deparse(substitute(token)) # gets name of token
  token <- NULL # voids token
  rm(token) # dereferences token
  gc() # forces garbage collection
  loginfo('Old variable name "%s" destroyed.', tokenname)
}
