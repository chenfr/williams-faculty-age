#' Estimate average age by department and year
#'
#' The "mean_department" function estimates the average age of Williams faculty sorted
#' by department and year. If no year is specified, 2014 is the defaulted.
#' @param x Character string of desired department. See "for_department" for a complete
#' list of departments to use as parameters.
#' @param y Data frame to be used. Data frames vary by year. Acceptable parameters include
#' "clean_df2011", "clean_df2012", "clean_df2013", "clean_df" (years 2011-2014)
#' @return The average age of Williams faculty for the specified department and year.
#' @export

mean_department <- function(x,y){

  if(missing(y)){
    y <- clean_df
  }

  #  If user forgets to enter y value, the 2014 data set is defaulted (clean_df)

  deparse(substitute(x))

  #  Allows the function to take strings as arguments

  var <- filter(y, department == x)

  #  Filters df by department (x) and puts all faculty in the particular
  #  department in the dataframe var

  var %>% group_by(department) %>%

    #  Groups the department column of var

    summarise(avg_age = 2038- mean(year, na.rm=TRUE))

  #  Estimates the average age of Chemistry faculty in the same way mean_faculty
  #  calculates the age

}
