#' Estimate average age of Williams Faculty
#'
#' The mean_faculty function estimates the average age of Williams faculty by
#' year. Available years are 2011-2014.
#' @param x The desired year of Williams Faculty, (2011, 2012, 2013, or 2014)
#' @return The average age of Williams faculty. Default is 2014.
#' @export

mean_faculty <- function(){

  avg_yearBA <- mean(clean_df$year,na.rm=TRUE)

  #  Vector of the years at which faculty obtained their BA's

  2038 - mean(avg_yearBA,na.rm=TRUE)

  #  2038 = 2016 + 22. We add the current year, 2016, plus the assumed age at
  #  which a BA's is obtained, 22.
  #  The mean function takes the mean of the years at which faculty obtained
  #  their BA's and then subtracts the result from 2038 to obtain an estimate
  #  of the avg age


}
