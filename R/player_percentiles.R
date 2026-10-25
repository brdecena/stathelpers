#' Calculate Percentile Rank
#'
#' Calculates percentile ranks for a selected statistic.
#'
#' @param data Data frame
#' @param metric Column name
#'
#' @return Vector of percentile values
#' @export

player_percentiles <- function(data, metric) {

  ranks <- rank(data[[metric]])

  percentiles <- round(
    100 * ranks / length(ranks),
    1
  )

  return(percentiles)

}

