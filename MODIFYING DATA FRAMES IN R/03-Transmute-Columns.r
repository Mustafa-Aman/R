---
title: "Modifying Data Frames in R"
output: html_notebook
---

```{r message=FALSE, warning=FALSE}
# load libraries
library(readr)
library(dplyr)
```

```{r message=FALSE}
# load data frame
dogs <- read_csv('dogs.csv')
```

```{r}
# inspect data frame
head(dogs)
```

```{r}
# update the function call to drop all existing columns
dogs <- dogs %>%
  mutate(avg_height = (height_low_inches + height_high_inches)/2,
         avg_weight = (weight_low_lbs + weight_high_lbs)/2,
        rank_change_13_to_16 = rank_2016 - rank_2013)%>%
  transmute(breed = breed , avg_height,avg_weight,rank_change_13_to_16)
  head(dogs)
```