library(readr)
library(dplyr)
timesdata <- read_csv("D:/Dataset/world-university-rankings/timesData.csv")
timesfirstdata <- timesdata %>%
  select("world_rank", "university_name", "country", "num_students", "year") #Selecting rank, university name, country, year
timesdata2016 <- timesfirstdata %>%
  filter(year == 2016)
timesdata2016 <- timesdata2016 %>%
  filter(country == "Canada")
timesdata2016 <- timesdata2016 %>%
  filter(num_students > 25000)
timesdata2016 <- timesdata2016 %>%
  filter(world_rank < 50 & world_rank != "201-250" & world_rank != "251-300" & world_rank != "301-350" & world_rank != "351-400" & world_rank != "401-500")
#Filtering out top universities based in Canada with number of students greater than 25000 and world rank less than 200