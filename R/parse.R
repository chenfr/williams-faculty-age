#' This file contains the functions which parse the data for this package.

load("data/facultyData.rda")
#' "facultyData", stored in /data, is the dataframe which lists the names of and date at which
#'  each Williams faculty member obtained their B.A.
#'
#' #' HOW-TO-OBTAIN-DATA:
#' facultyData <- read.csv("C:/Users/Frankie/Desktop/FacultyData.txt", header=FALSE, fill=TRUE, na.string="NA");  
#' Notice fill=TRUE is set, because not all professors obtained the same number of degrees (MA, PHD, BA, ect)
#' This inequality of columns causes issues in the dataframe, which fill=TRUE solves.
#' "FacultyData.txt" is a local text file obtained by copy and pasting the pdf of 
#' http://web.williams.edu/admin/registrar/catalog/bulletin2013_14.pdf
#' 

yearBA <- as.numeric(as.character(facultyData$V3));

#' V3 is column of the years in which the Williams faculty obtained his BA
#'
#' "as.numeric(as.character(facultyData$V3))" obtains only the numeric values in column V3
#' There are some non-numeric values caused by the unequal string lengths of each row.
#' Otherwise, this would cause issue with the "mean" function.
#' Feel free to use "summary(yearBA)" to see some quick statistics of the age of Williams faculty.

meanyearBA <- mean(yearBA,na.rm=TRUE);

#' We calculate the average year at which Williams Faculty obtain their BA's to help with the next function
#' 

meanFacultyAge <- 2016 - meanyearBA + 22;

#' Assuming that most people obtain their BA at 22, we subtract the average year at which
#' Williams Faculty obtain their BA from the current year (2016) and add 22 in order to obtain the average
#' age of Williams Faculty.
#' 
#' 

youngestFacultyAge <- 2016 - max(yearBA, na.rm=TRUE) + 22;

#' A quick estimate of the youngest Williams faculty using similar logic.

oldestFacultyAge <- 2016 - min(yearBA, na.rm=TRUE) + 22

#' A quick estimate of the oldest Williams faculty using similar logic.