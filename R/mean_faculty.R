#  This file contains the mean function that calculates the average age of
#  all current Williams Faculty.


mean_faculty <- function(){

  data(df)

  #  Loads the pre-cleaned data set, df

  avg_yearBA <- mean(df$year,na.rm=TRUE)

  #  Vector of the years at which faculty obtained their BA's

  2038 - mean(avg_yearBA,na.rm=TRUE)

  #  2038 = 2016 + 22. We add the current year, 2016, plus the assumed age at
  #  which a BA's is obtained, 22.
  #  The mean function takes the mean of the years at which faculty obtained
  #  their BA's and then subtracts the result from 2038 to obtain an estimate
  #  of the avg age


}
