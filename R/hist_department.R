#' Display Histogram of the Ages of Desired Department
#'
#' The "hist_department" function produces a histogram of the ages of all Williams
#' faculty in a particular department and year and includes an abline of the average
#' age of all the Williams faculty in the department. Requires the dplyr package for use.
#' @param x A character string of desired department. See for_department for a complete
#' list of departments to use as parameters. If no x parameter is entered, be sure to enter
#' "y=clean_df" or anothe specified year.
#' @param y The data frame to be used for the function. Available years to be used are
#' 2011, 2012, 2013, 2014. Acceptable parameters are clean_df2011, clean_df2012,
#' clean_df2013, clean_df
#' @param z A numerical value of the number of breaks desired in the histogram. Recommended
#' amount of breaks: 5-20. Default is 15.
#' @return The average age of Williams faculty for the specified department.
#' @export



hist_department <- function(x,y,z){

  #  For this function, x will be set as the department parameter, y as the data frame
  #  parameter and z as the parameter for the number of breaks in the histogram

  if(missing(z)){
    z <- 15
  }

  #  In case user forgets to put in a custom breaks number, function defaults
  #  breaks (z) to 15

  if(missing(y)){
    y <- clean_df
  }

  #  If user forgets to enter y value, the 2014 data set is defaulted (clean_df)


  if(missing(x)){
    var <- 2038- y[,3]
    y_name <- deparse(substitute(y))
    title <- paste("Histogram of Faculty from", y_name, sep=" ")
    hist(var,xlab="Age", main= title)
  }
  else{

    #  Allows user to get a histogram of the entire year's faculty if no x paramter is
    #  inputted.

    deparse(substitute(x))

    #  Allows the function to take strings as arguments for x

    var <- filter(y, department == x)

    #  Filters the dataframe by department (x) and puts all faculty in the particular
    #  department in the new dataframe var

    var1 <- 2038- var$year

    #  Takes just the years of BA's awarded in var and converts them to
    #  the faculty's age


    title <- paste("Histogram of the Ages of", x, "Faculty", sep=" ")

    #  Concatanates the Department name string (x) with "Ages of" and "Faculty"
    #  to produce the title for the histogram

    hist(var1, breaks= z, xlab="Age", main= title)

    #  Puts everything together in a histogram

    abline(v= mean(var1, na.rm=TRUE), col= "blue", lwd=2)

    #  Puts the mean age of the department's faculty as an abline on the histogram
  }
}
