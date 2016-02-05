#  This function produces a histogram of the ages of the desired department
#  User can play with the number of breaks in the histogram to get a better
#  visualization of the histogram.
#  Requires the dplyr package to use filter(), group_by(), and summarise()

hist_department <- function(x,y){

  #  For this function, x will be set as the department parameter and y
  #  as the parameter for the number of breaks in the histogram

  data(df)

  #  First I load the df************ load this in Vignette

  if(missing(y)){
   y <- 15
  }

  #  In case user forgets to put in a custom breaks number, function defaults
  #  breaks (y) to 15

  deparse(substitute(x))

  #  Allows the function to take strings as arguments for x

  var <- filter(df, department == x)

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
