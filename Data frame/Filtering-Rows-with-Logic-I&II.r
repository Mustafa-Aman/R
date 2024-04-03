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
# filter rows one condition
rock_groups <- artists %>%
  filter(genre == 'Rock')
rock_groups


```

```{r}
# filter rows multiple conditions
popular_rock_groups <- artists %>%
  filter(genre == 'Rock' , spotify_monthly_listeners > 20000000)
popular_rock_groups

```
# PART TWO 
# THERE IS TWO MORE LOGICAL OP WHICH ARE OR AND NOT 

```{r}
# filter rows with or
korea_or_before_2000 <- artists %>%
  filter(country == 'South Korea' | year_founded < 2000)
korea_or_before_2000
```

```{r}
# filter rows with not !
not_rock_groups <- artists %>%
  filter(!(genre == 'Rock'))
not_rock_groups


```