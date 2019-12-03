# Extract Major column and adding them to a newly created variable college_majors
college_majors <- recent_grads$Major
# Extracting rows 1,3 and 5 from unemployment rate column
unemployment_subset <- recent_grads[c(1,3,5),"Unemployment_rate"]
# Using dplyr package to select only the Major, Major_category, Total, Men, Women, Median and Unemployment_rate in a new variable
recent_grads_select <- recent_grads %>%
  select(Major, Major_category, Total, Men, Women, Median, Unemployment_rate)
# create a new column Women_percent for containing the percent  of women graduating in each major with mutate function
recent_grads_select <- recent_grads_select %>%
  mutate(Women_percent = (Women/Total)*100)
# filtering only Health and Median income above 70000 category with filer() function
recent_grads_health <- recent_grads_select %>%
  filter(Major_category == "Health")
recent_grads_money <- recent_grads_select %>%
  filter(Median > 70000)
# Multiple filter conditions in a single filter()
recent_grads_science <- recent_grads_select %>%
  filter(Major_category == "Biology & Life Science" | Major_category == "Physical Sciences")
potential_majors <- recent_grads_science %>%
  filter(Women_percent > 40 & Median >= 40000)
my_majors <- potential_majors %>%
  arrange (Unemployment_rate, desc(Median))