#' @title Binding two factors
#' @param x first factor
#' @param y second factor
#' @return a character vector
#' @export
#'
fbind <- function(x, y) {
    return(c(as.character(x), as.character(y)))
}
