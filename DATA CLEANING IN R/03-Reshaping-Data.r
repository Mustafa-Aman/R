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
# original column names
original_col_names <-colnames(students)
original_col_names

```

```{r}
# gather columns
students <- students%>%
  # select(-id)
  gather('fractions','probability',key='exam',value='score')
head(students)


```

```{r}
# updated column names
gathered_col_names <- colnames(students)
gathered_col_names

```

```{r}
# unique value counts of exam
exam_counts <- students%>%
  count(exam)
exam_counts


```