#' @title Adding a new column
#' @param dat a data.table object
#' @param column a vector
#' @param colName a character
#' @param where a integer
#' @return a modified data.table
#' @import data.table
#' @export
#'
InsertColumn <- function(data, column, colName = "column", where = 1) {
    nc <- ncol(data)

    if (where > nc + 1) {
        where <- nc + 1
    }
    if (colName %in% names(data)) {
        stop(paste(colName, "already in data!"))
    }
    seQ <- 1:nc
    data[, (colName) := column]
    pos <- ncol(data)
    first <- head(seQ, where - 1)
    last <- tail(seQ, nc - length(first))
    colorder <- c(first, pos, last)
    data.table::setcolorder(data, colorder)
    return(data)
}
