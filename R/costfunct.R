#' Cost function implementing C2 in the binary segmentation article
#'
#' @param data.vec Input data vector
#'
#' @return The sum of squares of the data vector
#' @export
#'
#' @examples
#' test.vec = c(1,2,3,5,7,9,11)
#' sum.sq = costfunct(test.vec)
costfunct = function(data.vec)
{
  # Get mean of data (or subsegment)
  dv.mean = mean(data.vec)

  # Initialize sum variable
  total.sum = 0

  # Get length of data.vec
  vlen = length(data.vec)

  # If there is only one element, return 0
  if(vlen > 1)
  {
    for(ind in 1:(vlen - 1))
    {
      dif = data.vec[ind + 1] - dv.mean
      dif = dif^2
      total.sum = total.sum + dif
    }
  }

  # Return the adjusted sum
  return(total.sum)
}
