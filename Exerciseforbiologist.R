library(tidyverse)

# Q1. Load the CSV file using read_csv()

plant_data <- read_csv("plant_growth.csv")
plant_data <- read_csv('https://github.com/Sijr73/tidyverse-biology-exercise/raw/refs/heads/main/plant_growth.csv')
# Q2. Use glimpse() and head() to inspect the data structure and preview the first rows
glimpse(plant_data)
head(plant_data)

# Q3 Rename Height_cm to Height and Leaf_Width_mm to Leaf_Width
plant_data <- plant_data %>%
  rename(
    Height = Height_cm,
    Leaf_Width = Leaf_Width_mm
  )
plant_data
# Q4 Create a new column Leaf_Width_cm by converting Leaf_Width from mm to cm
plant_data <- plant_data %>%
  mutate(Leaf_Width_cm = Leaf_Width / 10)
plant_data
# Q5 Use separate() to split the Location column into two: Facility and Chamber using _ as the separator
plant_data <- plant_data %>%
  separate(Location, into = c("Facility", "Chamber"), sep = "_")
plant_data
# Q6 Filter out all samples where the treatment is "Control"
filtered_data <- plant_data %>%
  filter(Treatment != "Control")
filtered_data
# Q7 Select only the columns: Species, Treatment, and Height
selected_data <- filtered_data %>%
  select(Species, Treatment, Height)
selected_data
# Q8 Count how many samples exist for each treatment?
plant_data %>%
  count(Treatment)

# Q9 Group by Species and Treatment, and compute the average Height.
plant_data %>%
  group_by(Species, Treatment) %>%
  summarize(Avg_Height = mean(Height), .groups = "drop")

# Q10 Create a bar chart showing the average plant height for each treatment group, separated by species.
summary_data <- plant_data %>%
  group_by(Species, Treatment) %>%
  summarize(Avg_Height = mean(Height))

ggplot(summary_data, aes(x = Treatment, y = Avg_Height, fill = Species)) +
  geom_col(position = "dodge") +
  labs(title = "Average Plant Height per Treatment", y = "Average Height (cm)")
