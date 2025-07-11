#' Add percentiles
#'
#' Adds the percentile (0-100) as a new column to a data frame column
#'
#' @param df A 'data.frame'.
#' @param col Column name as a 'string', for which the percentile is calculated.
#' @return A 'data.frame' with additional column '<col>_percentile'.
#' @examples
#' add_percentile(iris, "Sepal.Length")
#' @export
add_percentile <- function(df, col) {
  if(!col %in% names(df)) stop("Column does not exist!")

  x <- df[[col]]
  pct <- stats::ecdf(x)(x) * 100
  df[[paste0(col, "_percentile")]] <- pct
  df
}
