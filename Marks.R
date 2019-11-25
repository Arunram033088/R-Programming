# List of all subjects
subjects <- c("english", "tamil", "history", "geography", "science", "biology", "compter_science")
# marks of thomas
thomas <- c(80,91,65,82,73,75,89)
# GPA of thomas using mean() function
thomas_gpa <- mean(thomas)
#Combining subjects with thomas vector using a name() to highlight the subject vector contains header
names(thomas) <- subjects
print(thomas)