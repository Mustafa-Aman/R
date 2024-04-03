# PART ONE 
---
title: "Introduction to Data Frames in R"
output: html_notebook
---

```{r message=FALSE, warning=FALSE}
# load libraries
library(readr)
library(dplyr)
```

```{r message=FALSE}
# load data frame
artists <- read_csv('artists.csv')
```

```{r}
# select one column
artist_groups <- artists %>% 
  select(group)
artist_groups
```

```{r}
# select multiple columns
group_info <- artists %>% 
  select(group,spotify_monthly_listeners,year_founded)
group_info


```

# PART TWO

# its same with the decelstion as well you just have to add a - sgin before the name 

```{r}
# select all columns except one
no_albums <- artists %>%
  select(-albums)
no_albums
```

```{r}
# select all columns except a set
df_cols_removed <- artists %>%
  select(-genre,-spotify_monthly_listeners,-year_founded)
df_cols_removed

```