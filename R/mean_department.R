#  This function estimates the average age of Williams Faculty by department
#  Requires the dplyr package to use filter(), group_by(), and summarise()

mean_department <- function(x){

  data(df)

  #  First I load the df************ load this in Vignette

  deparse(substitute(x))

  #  Allows the function to take strings as arguments

  var <- filter(df, department == x)

  #  Filters df by department (x) and puts all faculty in the particular
  #  department in the dataframe var

  var %>% group_by(department) %>%

  #  Groups the department column of var

  summarise(avg_age = 2038- mean(year, na.rm=TRUE))

  #  Estimates the average age of Chemistry faculty in the same way mean_faculty
  #  calculates the age

}


#Calculates the ages of Williams Faculty by department
