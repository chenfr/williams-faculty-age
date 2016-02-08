#' Gives summary of the ages of Williams faculty by department and year
#'
#' The "summary_department" function givess a summary of the ages of Williams faculty sorted
#' by department and year. If no year is specified, 2014 is defaulted.
#' @param x Character string of desired department. See "for_department" for a complete
#' list of departments to use as parameters. If nothing is entered, "summary_department" will
#' summarize all departments.
#' @param y Data frame to be used. Data frames vary by year. Acceptable parameters include
#' "clean_df2011", "clean_df2012", "clean_df2013", "clean_df" (years 2011-2014). Note that
#' "y = clean_df2011" (or 2012/2013) must be entered as argument if user desires summarizing
#' all departments but does not want the default year 2014.
#' @return A summary of the ages of Williams faculty for the specified department and year.
#' This function uses the base summary() and sd() functions which will return the mean,
#' first quartile, median, mean, third quartile, maximum value, and standard deviation.
#' @export


summary_department <- function(x,y){

  if(missing(y)){
    y <- clean_df
  }

  #  If user forgets to enter y value, the 2014 data set is defaulted (clean_df)

  deparse(substitute(x))

  #  Allows the function to take strings as arguments

  if(missing(x)){

    var <- y

    #  Allows user to find the summary of all Williams Faculty regardless of department
    #  if nothing is put

  } else{

    var <- filter(y, department == x)

  }

  #  Otherwise, filters df by department (x) and puts all faculty in the particular
  #  department in the dataframe var

  summary <- summary(2038- var[,3])

  return(summary)

  #  Summarizes the ages of the faculty in the specified year and department
  #  Note that this does NOT give the standard deviation

  #sd <- sd(var[,3])

  #  Takes standard deviation of the ages of faculty in specified year and department

  ##setClass("Summary", representation(Spread = "table", Sd = "numeric"))

  #  Sets a S4 class "Summary" so we can return both summary and sd. This is necessary
  #  because R will only return one value (either sd() of ages or summary() of ages)

  ##summary_var <- new("Summary", Spread= summary, Sd = sd)

  #  Adds a new object in S4 class "Summary" with the summary and sd attributes

  #summary_var

  #  Returns both summary and sd

}
