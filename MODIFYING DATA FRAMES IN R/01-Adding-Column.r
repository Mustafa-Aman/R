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
dogs
```

```{r}
# add average height column
dogs <- dogs %>%
  mutate(avg_height = (height_low_inches+ height_high_inches)/2)
head(dogs)
```