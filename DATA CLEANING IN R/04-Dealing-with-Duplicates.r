---
title: "Data Cleaning in R"
output: html_notebook
---

```{r message=FALSE, warning=FALSE}
# load libraries
library(dplyr)
library(tidyr)
```

```{r}
# load students data frame
load("students.Rda")
```

```{r}
# drop id column
students <- students%>% 
  select(-id)
head(students)

```

```{r}
# find duplicated rows
duplicates <- students%>%
 duplicated()

```

```{r}
# count duplicated rows
duplicate_counts <- duplicates%>%
  table()
duplicate_counts


```

```{r}
# remove duplicated rows, keep only unique rows
unique_students <- students%>%
  distinct()
unique_students

```

```{r}
# find and count duplicated rows in updated data frame
updated_duplicates <- unique_students%>%
  duplicated() %>%
  table()
updated_duplicates
```