# populates data.frame with syntax
#' @include syntax.R
# provides type and section annotations
#' @include types.R  
# provides functions for annotating and cleaning data frame
#' @include utilities.R

#' The data proper
#'
#' \code{cleaned.data} produces cut, type-annotated, well-named version of data frame.
#'
#' @return the cleaned data frame
#' @export
cleaned.data = function() {
  thedata <- clean(raw.data(), 
                   sections.vector, 
                   types.vector) 
  return(thedata)
}
# provides summary and inductive statistical analysis
# source("analysis.R") 
