# 🧬 Tidyverse R Exercise for Biologists

This exercise uses real-world-style biological data from a plant growth experiment. It is designed to help you practice essential `tidyverse` skills for data manipulation and visualization in R.

---

## 📁 Dataset

File: `plant_growth.csv`

Columns:
- `Sample_ID`: Unique identifier for each sample
- `Species`: Plant species (`Arabidopsis`, `Brassica`)
- `Treatment`: Type of treatment (`Control`, `Fertilizer_A`, `Fertilizer_B`)
- `Location`: Greenhouse location (e.g., `Greenhouse_A`)
- `Date`: Date of measurement
- `Height_cm`: Height of the plant in centimeters
- `Leaf_Width_mm`: Leaf width in millimeters

---

## 🧪 Tasks

### 📥 1. Load and Inspect Data
**Q1.** Load the CSV file using `read_csv()`  
**Q2.** Use `glimpse()` and `head()` to inspect the data structure and preview the first rows

---

### 🔤 2. Rename Columns
**Q3.** Rename `Height_cm` to `Height` and `Leaf_Width_mm` to `Leaf_Width`

---

### 🧮 3. Mutate and Separate Columns
**Q4.** Create a new column `Leaf_Width_cm` by converting `Leaf_Width` from mm to cm  
**Q5.** Use `separate()` to split the `Location` column into two: `Facility` and `Chamber` using `_` as the separator

---

### 🔍 4. Filter and Select
**Q6.** Filter out all samples where the treatment is `"Control"`  
**Q7.** Select only the columns: `Species`, `Treatment`, and `Height`

---

### 📊 5. Count and Summarize
**Q8.** Count how many samples exist for each treatment using `count()`  
**Q9.** Group by `Species` and `Treatment`, and compute the average `Height` using `summarize()`

---

### 📈 6. Visualize with ggplot2
**Q10.** Create a bar chart showing the average plant height for each treatment group, separated by species. Use `geom_col()` and `position = "dodge"` for comparison.

---
