# Exercise 3: Data Frame Practice with `dplyr`.
# Use a different appraoch to accomplish the same tasks as exercise-1


# Install devtools package: allows installations from GitHub
install.packages('devtools')
install.packages('dplyr')
library('dplyr')
# Install "fueleconomy" package from GitHub
devtools::install_github("hadley/fueleconomy")
# Require/library the fueleconomy package
require(fueleconomy)

# Which Accura model has the best hwy MPG in 2015? (without method chaining)
set1 <- filter(vehicles, year == 2015 & make == "Acura")
best.acura.noChain <- filter(set1, hwy == max(hwy))


# Which Accura model has the best hwy MPG in 2015? (nesting functions)
best.acura.nest <- select(filter())

# Which Accura model has the best hwy MPG in 2015? (pipe operator)


### Bonus ###

# Write 3 functions, one for each approach.  Then, 
# Test how long it takes to perform each one 1000 times
