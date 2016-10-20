# Exercise 5: DPLYR Grouped Operations

# Install the nycflights13 package and read it in. Require the dplyr package.
install.packages("nycflights13")
install.packages("dplyr")

library(nycflights13)
library(dplyr)
require(nycflights13)
# In which month was the average departure delay the greatest?
# Hint: you'll have to perform a grouping operation before summarizing your data

nycflights13 <- read.csv(nycflights13)
# If you create a data.frame with the columns "month", and "delay" above, you should be able to create 
# a scatterplot by passing it to the 'plot' function
View(nycflights13)

# In which airport were the average arrival delays the highest?
# Hint: you'll have to perform a grouping operation before summarizing your data


### Bonus ###
# Which city was flown to with the highest average speed?
