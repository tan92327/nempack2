test_that("PCA works", {
  data.mat = matrix(
       c(2, 4, 3, 1, 5, 7),
       nrow=3,
       ncol=2)

  # Scale data
  scaled.mat = scale(data.mat, scale = FALSE)

  # Run SVD on scaled data
  sm.svd = base::svd(scaled.mat)

  # Get x mat
  x.mat = sm.svd$u %*% diag(sm.svd$d)
  rot.mat = sm.svd$v

  expect_equal(rot.mat, PCA(data.mat)$rotation)
})
