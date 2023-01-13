# Change working directory
setwd("C:/Users/aidan/OneDrive/Desktop/data-analytics-certificate/Course 8/case-study/fitbit-data")

# Load in packages
install.packages("tidyverse")
library(tidyverse)

data = read_csv("dailyActivity_merged.csv")
View(data)

unique(data$Id)
