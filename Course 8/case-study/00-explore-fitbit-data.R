# Change working directory
setwd("C:/Users/aidan/OneDrive/Desktop/bellabeat-case-study")
# Load in packages
install.packages("tidyverse")
library(tidyverse)

data = read_csv("dailyActivity_merged.csv")
View(data)

unique(data$Id)
