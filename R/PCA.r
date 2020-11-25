#' Principal Components Analysis
#'
#' @param data.mat Input data matrix
#'
#' @return Object of class tomPCA with rotation and x data
#' @export
#'
#' @examples
#' test.matrix = matrix(
#'    c(2, 4, 3, 1, 5, 7),
#'    nrow=3,
#'    ncol=2)
#'
#' pca.obj = PCA(test.matrix)
PCA = function(data.mat)
{
  # Scale data
  scaled.mat = scale(data.mat, scale = FALSE)

  # Run SVD on scaled data
  sm.svd = base::svd(scaled.mat)

  # Get x mat
  x.mat = sm.svd$u %*% diag(sm.svd$d)
  rot.mat = sm.svd$v

  # Return rotation and x
  return(structure(list(rotation = rot.mat, x = x.mat), class = "tomPCA"))
}
