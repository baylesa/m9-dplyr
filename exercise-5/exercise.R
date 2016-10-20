# Exercise 5: DPLYR Grouped Operations

# Install the nycflights13 package and read it in. Require the dplyr package.
install.packages("nycflights13")
install.packages("dplyr")

library(nycflights13)
library(dplyr)
require(nycflights13)
# In which month was the average departure delay the greatest?
# Hint: you'll have to perform a grouping operation before summarizing your data
average.depart <- group_by(flights, month) %>% 
                  summarise(mean = mean(dep_delay, na.rm = TRUE))%>%
                  arrange()
                  
plot(average.depart)
worst.month <- filter(max(average.depart))
# If you create a data.frame with the columns "month", and "delay" above, you should be able to create 
# a scatterplot by passing it to the 'plot' function
View(flights)

# In which airport were the average arrival delays the highest?
# Hint: you'll have to perform a grouping operation before summarizing your data
average.delays <- group_by(flights, dest) %>% 
                  summarise(mean = mean(arr_delay, na.rm = TRUE))

### Bonus ###
# Which city was flown to with the highest average speed?
highest