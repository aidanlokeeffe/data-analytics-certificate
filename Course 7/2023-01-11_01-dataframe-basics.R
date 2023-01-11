install.packages("tidyverse")
library(ggplot2)
data("diamonds")
View(diamonds)
head(diamonds)

str(diamonds)
colnames(diamonds)

library("tidyverse")

# Add a new column
mutate(diamonds, carat_2=100*carat)
