# Create a sample list which will have the names of clubs inside the harvard university
uni_clubs <- list("rugy_club", "ballroom_dancing", "chess_club")
print(uni_clubs)
# Adding chess_club to the list of clubs with vectors and matrices
club_title <- c("Chess Club")
club_description <- c("Meets two nights a week for members to play chess. Snacks are provided.")
club_dues <- c(50, 20, 15)
meeting_days <- c("Monday", "Wednesday")
meeting_times <- c("6:00 pm", "8:00 pm")
club_meetings <- rbind(meeting_days,meeting_times)
chess_club <- list(club_title, club_description, club_dues, club_meetings)
# Assigning header for the list
chess_club_names <- c("club_title", "club_description", "club_dues", "club_meetings")
names(chess_club) <- chess_club_names
print(chess_club)
#Indexing a list to get the second value in the club_dues vector
chess_club[[c(3,2)]]
#To index a particular element in a list and replacing it
chess_club[[c(3,3)]] <- 5
chess_club[[c(3,3)]]
#Adding a new vector named first_years in to chess_club list and assigining its name and indexing the list to the numbers of student participated in the spring semester
first_years <- c(12, 15)
names(first_years) <- c("fall", "spring")
chess_club[[5]] <- first_years
chess_club[["first_years"]] <- first_years
chess_club[[c(5,2)]]
print(chess_club)