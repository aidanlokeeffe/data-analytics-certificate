install.packages("tidyverse")
install.packages("palmerpenguins")
library(tidyverse)
library(palmerpenguins)
data(penguins)

# Plot body mass and flipper length
ggplot(data=penguins) + 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))
