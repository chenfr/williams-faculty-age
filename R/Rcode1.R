facultyData <- read.csv("C:/Users/Frankie/Desktop/FacultyData.txt", header=FALSE, fill=TRUE, na.string="NA");

facultyData$V3 <- as.numeric(as.character(facultyData$V3));

summary(facultyData$V3);

meanFaculty <- mean(facultyData$V3,na.rm=TRUE);

meanFacultyAge <- 2016 - meanFaculty + 22;

meanFacultyAge;

youngestFacultyAge <- 2016 - max(facultyData$V3, na.rm=TRUE) + 22;

oldestFacultyAge <- 2016 - min(facultyData$V3, na.rm=TRUE) + 22;

youngestFacultyAge;

oldestFacultyAge;
