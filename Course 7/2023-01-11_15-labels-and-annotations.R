install.packages("tidyverse")
install.packages("palmerpenguins")
library(tidyverse)
library(palmerpenguins)
data(penguins)

p<-ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mas vs. Flipper Length", subtitle="Sample of three species", caption="Data collected by Dr. Gorman")+
  annotate("text",x=220,y=3500,label="The Gentoos are the largest", color="purple", fontface="bold", angle=25)

p+annotate("text",x=0,y=0,label="AAAAA")

# For test
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
  labs(title="Penguins")

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = color, fill = cut)) +
  facet_wrap(~cut)
