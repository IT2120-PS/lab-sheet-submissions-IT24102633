setwd("C:\\Users\\Osura\\OneDrive\\Desktop\\LABS\\ps\\Lab_5")

# question 1
# set the working dictionary
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

#make the column name simple
names(Delivery_Times) <- "Time"
Delivery_Times$Time <- as.numeric(trimws(Delivery_Times$Time))
str(Delivery_Times)
x <- Delivery_Times$Time


# Question 2
# break into 9 classes
breaks <- seq(20,70,length.out = 10)

hist(x,breaks = breaks,right = FALSE,main = "Histogram of delivery times", xlab = "Delivery time(minutes)",ylab = "Frequency")

#question 3
summary(x);
mean(x);
median(x)

#question 4
h  <- hist(x, breaks = breaks, right = FALSE, plot = FALSE)
cf <- cumsum(h$counts)

plot(c(breaks[1], breaks[-1]),              
     c(0, cf),                              
     type = "o", pch = 16,
     main = "Ogive (Less-than) of Delivery Times",
     xlab = "Delivery time (minutes)",
     ylab = "Cumulative frequency",
     ylim = c(0, max(cf)))