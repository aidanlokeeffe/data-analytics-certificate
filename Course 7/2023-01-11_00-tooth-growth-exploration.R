data(ToothGrowth)
View(ToothGrowth)

# Need to filter and sort this data
library(dplyr)

filtered_tg <- filter(ToothGrowth, dose==0.5)
View(filtered_tg)

arrange(filtered_tg,len)

# Now we use nested functions
arrange(filter(ToothGrowth, dose==0.5),len)

# Now we use pipes
filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  arrange(len)
filtered_toothgrowth

View(filtered_toothgrowth)

# Find mean tooth growth for each supplement
val <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len,na.rm = T), .group="drop")
val
