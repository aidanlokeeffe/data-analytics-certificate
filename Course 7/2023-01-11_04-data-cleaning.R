# Makes referencing files easier
install.packages("here")
library("here")

# Simplify data cleaning tasks
install.packages("skimr") # easier summary data
library("skimr")
install.packages("janitor") # Easier cleaning 
library("janitor")

install.packages("dplyr")
library("dplyr")

# Palmer penguins
install.packages("palmerpenguins")
library("palmerpenguins")

skim_without_charts(penguins)

glimpse(penguins)

head(penguins)

# Select pulls a subset of variables
penguins %>% 
  select(species)

penguins %>% 
  select(-species)

penguins %>%
  rename(island_new=island)

# rename with makes column names more consistent
rename_with(penguins, toupper)
rename_with(penguins, tolower)

# clean names function ensures only characters, numbers, and underscores in the names
clean_names(penguins)
