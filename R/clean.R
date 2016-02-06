#  This function is used to clean the Williams faculty data set for any year.
#  In particular, this function cleans the Department column of
#  the dataframe and compiles everything in a new dataframe called "mega_clean_df"
#
#  Note that the data set must have the title of the professor or degree earned
#  in the second column of the dataframe.
#  The reason why we clean this is that the second column shows the title
#  of the professor (e.g. Professor of Philosophy), which is unnecessary
#  information that will confuse filter() and group_by() functions in dplyr.
#  Our goal with this function is clean this column so that only the department
#  name (e.g. Philosophy) remains.
#
#  I recommend using read.csv("C:/Users/Frankie/Desktop/facultyData2013.txt", header=FALSE, fill=TRUE, na.string="NA")
#  as the code to read in the raw data

for_departments <- c("Africana Studies", "American Studies", "Anthropology",
                     "Arabic", "Art History", "Art Studio", "Asian American Studies",
                     "Asian Studies", "Astronomy", "Astrophysics", "Biochemistry", "Biology",
                     "Chemistry", "Chinese", "Classics", "Cognitive Science",
                     "Comparative Literature", "Computer Science", "Dance", "Economics", "English",
                     "Enironmental Policy", "Environmental Science", "Environmental Studies",
                     "French", "Geosciences", "German", "Global Studies", "History of Science",
                     "Italian", "Japanese", "Latina/o Studies", "Maritime Studies",
                     "Mathematics", "Music", "Neuroscience", "Performance Studies",
                     "Philosophy", "Physical Education", "Physics", "Political Economy",
                     "Political Science", "Psychology", "Public Health", "Religion",
                     "Romance Languages", "Russian", "Sociology", "Spanish", "Statistics",
                     "Theatre", "Women's, Gender, & Sexuality Studies", "History", "Art")

#  First Assigns the department names to clean in the dataframe
#  I manually entered these in, but this is still significantly faster
#  than cleaning the data by hand.
#  A potential problem is with 'Art', 'Art History', and 'History'--- with
#  my code, we homogenize the Art Faculty with the Art History and History
#  departments.
#  This is customizable for the user, as long as he adjusts this list.



mega_clean <- function(y){

  #  Define mega_clean() to clean the data set y.

  y[,3] <- as.numeric(as.character(y[,3]))

  #  Coerces the empty strings into NA's in V3

  y1 <- y[complete.cases(y[,3]), ]

  #  Deletes every row that has an NA in column V3 (the "department" column)
  #  Now we run the mega_clean() function on y1 (the ready-to-be-cleaned df)

  var_cleaning <<- y1[,2]

  #  Copies the dataframe and assigns itself as the new dataframe to be cleaned
  #  We need this because the for loop will not "remember" the previous
  #  cycles if we do not set dataframe to be changed to be the same thing

  for(i in 1:54) {

    #  Sets up a for loop to clean up every row that contains the name of
    #  the particular department one by one.

    clean <- function(x) {

      #  Defines a new function clean() that will delete everything in a row
      #  except for the desired word-- namely, the department name

      deparse(substitute(x))

      #  Allows strings to be entered as arguments in clean()

      var <- paste(".*", x, ".*", sep="")

      #  Sets up a variable that concactanates ".*" on either side of the
      #  variable x, which will be a string of the particular department
      #  Allows var to be used in gsub()

      var_cleaning <<- gsub(var, x, var_cleaning)

      #  Sets a new global variable that "saves" each iteration of the loop
      #  More importantly, this line replaces everything in the string with
      #  just the particular department

    }
    clean(for_departments[i])

    #  The kicker of the for loop. This goes through every character in
    #  for_departments and presumably cleans all entries in the dataframe
    #  such that df3 shows only the department names
  }

  mega_clean_df <<- data.frame(name=y1[,1], department= var_cleaning, year= y1[,3])

}
