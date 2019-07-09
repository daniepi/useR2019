context("Fbind unit tests")

x <- factor(c("cat", "dog"))
y <- factor(c("apple", "pear"))

test_that("Fbind returns a character vector", {
    res <- fbind(x, y)
    expect_is(res, "character")
})
