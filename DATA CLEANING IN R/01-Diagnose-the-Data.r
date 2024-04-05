---
title: "Data Cleaning in R"
output: html_notebook
---

```{r message=FALSE, warning=FALSE}
# load libraries
library(readr)
library(dplyr)
```

```{r message=FALSE}
# read CSVs
grocery_1 <- read_csv('grocery_1.csv')
grocery_2 <- read_csv('grocery_2.csv')
```

```{r}
# inspect data frames
head(grocery_1)
head(grocery_2)

```

```{r}
# clean data frame
clean_data_frame <- 2
```