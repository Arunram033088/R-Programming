math <- (92+87+85)/3
chemistry <- (90+81+92)/3
writing <- (84+95+79)/3
art <- (95+86+93)/3
history <- (77+85+90)/3
music <- (92+90+91)/3
physical_education <- (85+88+95)/3
final_scores <- c(math, chemistry, writing, art, history, music, physical_education)
final_scores
# Created marks list for a student for different subjects and added them to a new vector named final_scores
class_names <- c("math", "chemistry", "writing", "art", "history", "music", "physical_education")
#Created a new vector class_names to list the subject names
stem_grades <- final_scores[c(1:2)]
non_stem_grades <- final_scores[c(3:7)]
avg_stem_grades <- mean(stem_grades)
avg_non_stem_grades <- mean(non_stem_grades)
#created new vectors for stem grade subjects and non-stem grade subjects and calculated their mean in a new vector
names(final_scores) <- class_names
final_scores
#added subject names to the marks in the final_scores with names()
liberal_arts <- final_scores[c("writing", "history")]
fine_arts <- final_scores[c("art", "music")]
# Created new vectors liberal arts and fine arts from final_scores by calling the element names
mean(liberal_arts) > mean(fine_arts)
# To check whether liberal arts mark is greater than the fine arts marks
final_scores["math"] > final_scores
# To check whether maths marks are greater than all other subjects
gpa <- mean(final_scores)
#to find the average of all the subjects
above_average <- final_scores > gpa
above_averagebest_grades <- final_scores[above_average]
#filtering out only the class grades which are higher than the gpa in to a new vector
#working with multiple vectors at once
tests <- c(76, 89, 78, 88, 79, 93, 89)
homework <- c(85, 90, 88, 79, 88, 95, 74)
projects <- c(77, 93, 87, 90, 77, 82, 80)
johnny_scores <- (tests + homework + projects) /3
print(mean(johnny_scores))