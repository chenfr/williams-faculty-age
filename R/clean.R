#  This function is used to clean the dataframe, facultyData.
#  In particular, this function is used to clean the Department column of
#  facultyData.

clean <- function(x) {

  deparse(substitute(x))

  #  Allows function clean to take strings as arguments. In particular,
  #  x will be the different departments of the school.

  var <- paste(".*", x, ".*", sep="")

  #  Allows var to be used in gsub().
  #  I use the paste() function to concactanete the strings ".*", x, and ".*".
  #  ".*" selects everything before and after x in gsub. sep="" ensures that
  #  everything is a single string with nothing else added.

  gsub(var, x, f2)

  # By setting x as the string of a particular department, we can wipe the
  # entire string save for the department name by selecting the entire string
  # and replacing it all with just the Department name.

}


# using this function, I cleaned facultyData such that V2 showed only the
# departments by repeating f2 <- clean("Department") for each department.
