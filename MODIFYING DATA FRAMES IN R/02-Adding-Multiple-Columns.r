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
# add average height, average weight and rank change columns
dogs <- dogs %>%
  mutate(avg_height = (height_low_inches + height_high_inches)/2)%>%
  mutate(avg_weight =(weight_low_lbs + weight_high_lbs)/2)%>%
  mutate(rank_change_13_to_16 = rank_2016 - rank_2013)
  head(dogs)
```