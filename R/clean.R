#  This function is used to clean the dataframe, facultyData.
#  In particular, this function is used to clean the Department column of
#  our dataframe and compiles everything in a new dataframe clean_df


mega_clean <- function(){

  #  Define mega_clean() to clean all of V2. V2 currently shows the title
  #  of the professor (e.g. Professor of Philosophy), which is unnecessary
  #  information that will confuse filter() and group_by() functions in dplyr
  #  Our goal with this function is to obtain a vector character (V2 currently
  #  (which we will replace with df3) that returns only the name of the department
  #  (e.g. Philosophy)

  for_departments <- c("Africana Studies", "American Studies", "Anthropology",
                       "Arabic", "Art History", "Art Studio", "Asian American Studies",
                       "Asian Studies", "Astronomy", "Astrophysics", "Biochemistry", "Biology",
                       "Chemistry", "Chinese", "Classics", "Cognitive Science",
                       "Comparative Literature", "Computer Science", "Dance", "English",
                       "Enironmental Policy", "Environmental Science", "Environmental Studies",
                       "French", "Geosciences", "German", "Global Studies", "History of Science",
                       "Italian", "Japanese", "Latina/o Studies", "Maritime Studies",
                       "Mathematics", "Music", "Neuroscience", "Performance Studies",
                       "Philosophy", "Physical Education", "Physics", "Political Economy",
                       "Political Science", "Psychology", "Public Health", "Religion",
                       "Romance Languages", "Russian", "Sociology", "Spanish", "Statistics",
                       "Theatre", "Women's, Gender, & Sexuality Studies", "History", "Art")

  #  Assigns the department names to clean in the dataframe
  #  I manually entered these in, but this is still significantly faster
  #  than cleaning the data by hand.
  #  A potential problem is with 'Art', 'Art History', and 'History'--- with
  #  my code, we homogenize the Art Faculty with the Art History and History
  #  departments.

  clean_df <<- df2

  #  Copies df2 and assigns clean_df as the new dataframe to be cleaned
  #  We need this because the for loop will not "remember" the previous
  #  cycles if we do not set dataframe to be changed to be the same thing

  for(i in 1:53) {

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

      clean_df <<- gsub(var, x, clean_df)

      #  Sets a new global variable that "saves" each iteration of the loop
      #  More importantly, this line replaces everything in the string with
      #  just the particular department

    }
    clean(for_departments[i])

    #  The kicker of the for loop. This goes through every character in
    #  for_departments and presumably cleans all entries in the dataframe
    #  such that df3 shows only the department names
  }
  clean_df <<- data.frame(name=x$V1, department= clean_df, year= x$V3)
}
