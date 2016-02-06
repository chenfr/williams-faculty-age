#  This file loads the primary dataframe, "df" (clean_df) for this package
#  This file also contains quick values of Williams faculty, such as the oldest,
#  youngest, and average age of Williams faculty

#  "facultyData", stored in /data, is the dataframe which lists the names of
#  and date at which each Williams faculty member obtained their B.A.
#
#  HOW-TO-OBTAIN-DATA:
#  facultyData <- read.csv("C:/Users/Frankie/Desktop/FacultyData.txt", header=FALSE, fill=TRUE, na.string="NA");
#  Notice fill=TRUE is set, because not all professors obtained the same number
#  of degrees (MA, PHD, BA, ect). This inequality of columns causes issues in
#  the dataframe, which fill=TRUE solves.
#  "FacultyData.txt" is a local text file obtained by copy and pasting the
#  pdf of http://web.williams.edu/admin/registrar/catalog/bulletin2013_14.pdf

data(df)

#clean_df

#  "df", stored in /data, is the cleaned up version of facultyData. clean_df is the actual
#  name of the file in the package environment.
#  It is a dataframe of facultyData with V2, the departments column, significantly
#  cleaned up. Furthermore, all other variables are cut, leaving only 3 variables:
#  name, department, and yearBA (year at which bachelor's was obtained)
#  We will used df as the primary dataframe for this package.


avg_yearBA <- mean(clean_df$year,na.rm=TRUE)

#  We calculate the average year at which Williams Faculty obtain their BA's to
#  help with the next function.

average_faculty <- 2016 - avg_yearBA + 22

#  Assuming that most people obtain their BA at 22, we subtract the average year
#  at which Williams Faculty obtain their BA from the current year (2016) and add
#  22 in order to obtain the average age of Williams Faculty.
#  Note that the function mean_faculty() accomplishes the same thing

youngest_faculty <- 2016 - max(clean_df$year, na.rm=TRUE) + 22

#  A quick estimate of the youngest Williams faculty using similar logic.

oldest_faculty <- 2016 - min(clean_df$year, na.rm=TRUE) + 22

#  A quick estimate of the oldest Williams faculty using similar logic.
