#' Display Histogram of the Ages of Desired Department
#'
#' The "hist_department" function produces a histogram of the ages of all Williams
#' faculty in a particular department and includes an abline of the average age of all
#' the Williams faculty in the department. Requires the dplyr package for use.
#' @param x A character string of desired department. See for_department for a complete
#' list of departments to use as parameters.
#' @param y A numerical value of the number of breaks desired in the histogram. Recommended
#' amount of breaks: 5-20. Default is 15.
#' @return The average age of Williams faculty for the specified department.
#' @export



hist_department <- function(x,y){

  #  For this function, x will be set as the department parameter and y
  #  as the parameter for the number of breaks in the histogram

  if(missing(y)){
   y <- 15
  }

  #  In case user forgets to put in a custom breaks number, function defaults
  #  breaks (y) to 15

  deparse(substitute(x))

  #  Allows the function to take strings as arguments for x

  var <- filter(clean_df, department == x)

  #  Filters df by department (x) and puts all faculty in the particular
  #  department in the dataframe var

  var1 <- 2038- var$year

  #  Takes just the years of BA's awarded in var and converts them to
  #  the faculty's age


  title <- paste("Histogram of the Ages of", x, "Faculty", sep=" ")

  #  Concatanates the Department name string (x) with "Ages of" and "Faculty"
  #  to produce the title for the histogram

  hist(var1, breaks= y, xlab="Age", main= title)

  #  Puts everything together in a histogram

  abline(v= mean(var1, na.rm=TRUE), col= "blue", lwd=2)

  #  Puts the mean age of the department's faculty as an abline on the histogram

}
