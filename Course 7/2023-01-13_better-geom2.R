install.packages("tidyverse")
install.packages("palmerpenguins")
library(tidyverse)
library(palmerpenguins)
data(penguins)

# Using smooth instead of line
ggplot(data=penguins)+
  geom_smooth(mapping=aes(flipper_length_mm,y=body_mass_g))+
  geom_point(mapping=aes(flipper_length_mm,y=body_mass_g))

# Plot a separate line for each species
ggplot(data=penguins)+
  geom_smooth(mapping=aes(flipper_length_mm,y=body_mass_g,color=species))

ggplot(data=penguins)+
  geom_jitter(mapping=aes(flipper_length_mm,y=body_mass_g))

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut, fill=clarity))

# Facets
ggplot(data=penguins)+
  geom_point(mapping=aes(flipper_length_mm,y=body_mass_g))+
  facet_wrap(~species)

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut))+
  facet_wrap(~cut)

# Two have two facets
ggplot(data=penguins)+
  geom_point(mapping=aes(flipper_length_mm,y=body_mass_g,color=species))+
  facet_grid(sex~species)
