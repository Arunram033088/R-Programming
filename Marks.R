# List of all subjects
subjects <- c("english", "tamil", "history", "geography", "science", "biology", "compter_science")
# marks of thomas
thomas <- c(80,91,65,82,73,75,89)
# GPA of thomas using mean() function
thomas_gpa <- mean(thomas)
#Combining subjects with thomas vector using a name() to highlight the subject vector contains header
names(thomas) <- subjects
print(thomas)
#Finding type of values in a object using typeof() function
typeof(thomas)
#Creating now objects for core and non_core subjects
core_subjects <- c(thomas[3:7])
non_core_subjects <- c(thomas[1:2])
# calculating gpa for core_subjects and non_core_subjects using mean()
core_subjects_gpa <- mean(core_subjects)
non_core_subjects_gpa <- mean(non_core_subjects)
# Checking whether each subject marks of thomas is greater than his core_subjects_gpa
core_gpa <- thomas > core_subjects_gpa
print(core_subjects_gpa)