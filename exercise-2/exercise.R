# Exercise 2: Data Frame Practice with `dplyr`.
# Use a different appraoch to accomplish the same tasks as exercise-1

# Install devtools package: allows installations from GitHub
install.packages('devtools')
install.packages('dplyr')
# Install "fueleconomy" package from GitHub
devtools::install_github("hadley/fueleconomy")

# Require/library the fueleconomy package
library(dplyr)
require(fueleconomy)
# You should have have access to the `vehicles` data.frame


vehicles1997 <- filter(vehicles, year == 1997)

# Use the `unique` function to verify that there is only 1 value in the `year` column of your new data.frame
unique(vehicles1997)

# Create a data.frame of 2-Wheel Drive vehicles that get more than 20 miles/gallon in the city
two.wheel <- filter(vehicles1997, drive == "Front-Wheel Drive" & hwy > 20)

# Of those vehicles, what is the vehicle ID of the vehicle with the worst hwy mpg?
worst.hwy <- filter(two.wheel, hwy == min(hwy))

# Write a function that takes a `year` and a `make` as parameters, and returns 
# The vehicle that gets the most hwy miles/gallon of vehicles of that make in that year
find.best <- function(make1, year1){
  set1 <- filter(vehicles, year == year1 & make == make1)
  best <- filter(set1, hwy == max(hwy))
  return(best)
}

honda <- find.best("Honda", 1995)
# What was the most efficient honda model of 1995?


