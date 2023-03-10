install.packages("palmerpenguins")
library("palmerpenguins")

install.packages("tidyverse")
library("tidyverse")

penguins %>% 
  arrange(bill_length_mm)

penguins %>%  arrange(-bill_length_mm)

penguins2 <- penguins %>% arrange(-bill_length_mm)

View(penguins2)

# Group by is combined with other functions. Group by some column and then use
# a function on each group
penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarize(mean_bill_length_mm = mean(bill_length_mm))

penguins %>%
  group_by(island) %>% 
  drop_na() %>% 
  summarize( max_bill_length = max(bill_length_mm) )

penguins %>% 
  group_by(species, island) %>% 
  drop_na() %>% 
  summarize(max_bl = max(bill_length_mm), mean_bl=mean(bill_length_mm))

# Can filter data
penguins %>% 
  filter(species == "Adelie")
