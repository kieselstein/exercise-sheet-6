#' Mean and standard deviation
#'
#' Calculates the mean and standard deviation of a numeric vector column.
#'
#' @param x Numeric Vector.
#' @return A List with elements 'mean' and 'sd'.
#' @examples
#' calc_mean_sd(c(1, 2, 3, 4, 5))
#' @export
calc_mean_sd <- function(x) {
  #check for x
  if(!is.numeric(x)) stop("x has to be numeric!")

  list(
    mean = mean(x, na.rm = TRUE),
    sd = sd(x, na.rm = TRUE)
  )
}

