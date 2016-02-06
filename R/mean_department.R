#' Estimate average age by department
#'
#' The "mean_department" function estimates the average age of Williams faculty sorted
#' by department.
#' @param x Character string of desired department. See "for_department" for a complete
#' list of departments to use as parameters.
#' @return The average age of Williams faculty for the specified department.
#' @export

#  This function estimates the average age of Williams Faculty by department
#  Requires the dplyr package to use filter(), group_by(), and summarise()

mean_department <- function(x){

  deparse(substitute(x))

  #  Allows the function to take strings as arguments

  var <- filter(clean_df, department == x)

  #  Filters df by department (x) and puts all faculty in the particular
  #  department in the dataframe var

  var %>% group_by(department) %>%

    #  Groups the department column of var

    summarise(avg_age = 2038- mean(year, na.rm=TRUE))

  #  Estimates the average age of Chemistry faculty in the same way mean_faculty
  #  calculates the age

}
