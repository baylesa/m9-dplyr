# Exercise 7: DPLYR practice with NBA data
install.packages('devtools')
install.packages('dplyr')
library('dplyr')
# Read in the NBA player data into a variable called `teams.data` using `read.csv`
teams.data <- read.csv(file = "teams.csv")
# The data.frame team.data should now be accessible to you. 
# View it, and get some basic information about the number of rows/columns. 
# Note the "X" preceding some of the column titles as well as the "*" 
# following the names of teams that made it to the playoffs that year.
teams.data <- mutate(teams.data, turnToSteal = TOV / STL)

# Add a column that gives the turnovers to steals ratio (TOV / STL) for each team

teams.data <- arrange(teams.data, turnToSteal)
# Sort the teams from lowest turnover/steal ratio to highest
# Which team has the lowest ratio?
teams.data <- mutate(teams.data, apg = AST/G) %>%
              arrange(-apg)
# Using the pipe operator, create a new column of assists per game (AST / G) AND
# sort the data.frame by this new column in DESCENDING order.
              
# Create a data.frame called `good.offense` of teams that scored more than 8700 points (PTS)
teams.data <- filter(teams.data, PTS > 8700)
# Create a data.frame called `good.defense` of teams that had more than 470 blocks (BLK)
teams.data <- filter(teams.data, BLK > 470)
# Create a data.frame called `defense.stats` that only shows defensive rebounds (DRB), steals (STL),
# and blocks (BLK) along with the team name.
defense.stats <- select(teams.data, DRB, STL,BLK, Team)
# Create a data.frame called `offense.stats` that only shows offensive rebounds (ORB), 
# field-goal % (FG.), and assists (AST) along with the team name.
offense.stats <- select(teams.data, ORB, FG.,AST, Team)

### Bonus ###
# Create a function called `BetterShooters` that takes in two teams and returns
# a data.frame of the team with the better field-goal percentage. The returned 
# data.frame should include the team name, field-goal percentage, and points.

BetterShooters <- function(team1, team2){
  better.field <- filter(teams.data, Team %in% c(team1, team2)) %>% filter(FG. == max(FG.)) %>% select(team, FG. )
  return (better.field)
}

