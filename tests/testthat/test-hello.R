test_that("hello works", {
  set.seed(1)
  expect_snapshot(hello())
  expect_snapshot(hello("Lucy Elen"))
})