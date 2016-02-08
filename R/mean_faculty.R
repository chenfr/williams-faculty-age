#' Estimate average age of Williams Faculty
#'
#' The mean_faculty function estimates the average age of Williams faculty by
#' year. Available years are 2011-2014.
#' @param x The desired year of Williams Faculty. Acceptable arguments are
#' 'clean_df2011', 'clean_df2012', 'clean_df2013', 'clean_df' for data from years
#' 2011-2014. 'clean_df' is default
#' @return The average age of Williams faculty. Default is 2014.
#' @export

mean_faculty <- function(x){

  if(missing(x)){
    x <- clean_df
  }

  #  If no argument is entered, data from 2014 is default

  avg_yearBA <- mean(x[,3],na.rm=TRUE)

  #  Vector of the years at which faculty obtained their BA's

  2038 - mean(avg_yearBA,na.rm=TRUE)

  #  2038 = 2016 + 22. We add the current year, 2016, plus the assumed age at
  #  which a BA's is obtained, 22. Because the difference between the current
  #  year and in the year in question has already been compensated in the preloaded
  #  dataframe, this calculation will work across all years.
  #  The mean function takes the mean of the years at which faculty obtained
  #  their BA's and then subtracts the result from 2038 to obtain an estimate
  #  of the avg age


}
