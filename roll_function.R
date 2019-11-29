# creating first user defined function in R. roll function is created to calculate the sum of 2 values of dice which are thrown at random
roll <- function(){
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE,
    prob = c(1/8,1/8,1/8,1/8,1/8,3/8))
  sum(dice)
}
roll()