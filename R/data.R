#' This file contains the functions which produce the data for this package.
#'

facultyData <- read.csv("C:/Users/Frankie/Desktop/FacultyData.txt", header=FALSE, fill=TRUE, na.string="NA");


#' "facultyData" is the dataframe which lists the names of and date at which 
#'  each Williams faculty member obtained their B.A.
#' 
#' Notice fill=TRUE is set, because not all professors obtained the same number of degrees (MA, PHD, BA, ect)
#' This inequality of collumns causes issues in the dataframe, which fill=TRUE solves.
#' 

yearBA <- as.numeric(as.character(facultyData$V3));

#' V3 is column of the years in which the Williams faculty obtained his BA
#' 
#' "as.numeric(as.character(facultyData$V3))" obtains only the numeric values in column V3
#' There are some non-numeric values caused by the unequal string lengths of each row. This causes issue with the "mean" function.
#' 
#' 

summary(yearBA);

meanyearBA <- mean(yearBA,na.rm=TRUE);

meanFacultyAge <- 2016 - meanyearBA + 22;

youngestFacultyAge <- 2016 - max(yearBA, na.rm=TRUE) + 22;

oldestFacultyAge <- 2016 - min(yearBA, na.rm=TRUE) + 22;

