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
# arrange rows in ascending order
group_asc <- artists %>%
  arrange(group)
group_asc
```

```{r}
# arrange rows in descending order
youtube_desc <- artists %>%
  arrange(desc(youtube_subscribers))
youtube_desc


```