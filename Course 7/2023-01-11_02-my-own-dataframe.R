install.packages("tidyverse")
library("tidyverse")

names <- c("","","","")
age <- c(0,0 ,0 ,0)

people <- data.frame(names, age)

head(people)
str(people)
glimpse(people)
colnames(people)

mutate(people, age_in_20 = age + 20)

people$names[1] <- "Velcro"
people
