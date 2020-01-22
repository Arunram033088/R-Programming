rclub_title <- c("Rugbby_Club") #creating a new club for rugby
rclub_description <- c("club for rugby matches and practising rugby in general")
rclub_dues <- c(20,10,5)
rmeeting_days <- c("Tuesday", "Thursday")
rmeeting_time <- c("7:00 am", "9:00 am")
rclub_meeting_times <- rbind(rmeeting_days, rmeeting_time)
rugby_club <- list(rclub_title, rclub_description, rclub_dues, rclub_meeting_times)
rugby_club # created a list for rugby club
rfirst_years <- c(10, 15)
names(rfirst_years) <- c("fall", "spring")
rugby_club[[5]] <- rfirst_years # appended first years student enrollment
rclub_names <- c("club_title", "club_description", "club_dues", "club_meeting_times", "rfirst_years")
names(rugby_club) <- rclub_names # assigning titles for each of the objects in the rugby club
rugby_club
cclub_title <- c("chess_Club") #creating a new club for chess
cclub_description <- c("club for chess matches and practising chess in general")
cclub_dues <- c(15,12,8)
cmeeting_days <- c("monday", "wednesday")
cmeeting_time <- c("6:00 pm", "8:00 pm")
cclub_meeting_times <- rbind(cmeeting_days,cmeeting_time)
chess_club <- list(cclub_title, cclub_description, cclub_dues, cclub_meeting_times)
chess_club # created a list for rugby club
cfirst_years <- c(20, 25)
names(cfirst_years) <- c("fall", "spring")
chess_club[[5]] <- cfirst_years # appended first years student enrollment
cclub_names <- c("club_title", "club_description", "club_dues", "club_meeting_times", "cfirst_years")
names(chess_club) <- cclub_names # assigning titles for each of the objects in the rugby club
chess_club
uni_list <- list(chess_club, rugby_club) # created a overall list to add both rugby and chess to it
uni_list
