data <- data.table::data.table(a = 1, b = 2)
col <- c(3)

# ---------------------------------------------------------------------------------------------


test_that("Fbind returns error if column already exists", {
    expect_error(InsertColumn(data, col, colName = "b", where = 3), regexp = "already in data!")
})

test_that("Fbind returns a correct data.table", {
    res <- InsertColumn(data, col, colName = "col1", where = 2)
    expect_named(res, c("a", "col1", "b"))
})

test_that("Fbind appends column if where > ncol(data)", {
    res <- InsertColumn(data, col, colName = "col2", where = 8)
    expect_named(res, c("a", "col1", "b", "col2"))
})

test_that("Fbind returns a data.table object", {
    res <- InsertColumn(data, col, colName = "col3", where = 3)
    expect_is(res, "data.table")
})

