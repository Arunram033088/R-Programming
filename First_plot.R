library("ggplot2")
#scatterplot
x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)
x
y <- x^3
y
qplot(x,y)
#histogram
xs <- c(1,2,2,2,3,3)
qplot(xs, binwidth = 1)
#histogram 2
x3 <- c(0,1,1,2,2,2,3,4)
qplot(x3, binwidth = 1)
# creating a histogram with the roll() for 10,000 dice rolls
rolls <- replicate(10000,roll())
qplot(rolls, binwidth = 1)