#  This is a list of the departments at Williams to be used for other functions

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

#  Assigns the department names to clean in the dataframe
#  I manually entered these in, but this is still significantly faster
#  than cleaning the data by hand.
#  A potential problem is with 'Art', 'Art History', and 'History'--- with
#  my code, we homogenize the Art Faculty with the Art History and History
#  departments.
#  This is customizable for the user, as long as he adjusts this list.
