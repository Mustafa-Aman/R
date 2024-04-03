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
# select columns
chosen_cols <- artists %>% 
  select(-country,-year_founded,-albums)
head(chosen_cols)
```

```{r}
# filter rows
popular_not_hip_hop <- chosen_cols %>% 
  filter(spotify_monthly_listeners > 20000000, genre != 'Hip Hop') 
head(popular_not_hip_hop)
```

```{r}
# arrange rows
youtube_desc <- popular_not_hip_hop %>% 
  arrange(desc(youtube_subscribers))
head(youtube_desc)
```

```{r}
# select columns, filter and arrange rows
artists <- artists %>%
  select(-country,-year_founded,-albums)%>%
  filter(spotify_monthly_listeners > 20000000 & genre != 'Hip Hop')%>%
  arrange(desc(youtube_subscribers))
head(artists)




```