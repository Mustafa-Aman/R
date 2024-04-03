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
# inspect data frame
artists
head(artists)
summary(artists)


```