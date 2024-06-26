---
title: "Data Cleaning in R"
output: html_notebook
---

```{r message=FALSE, warning=FALSE}
# load libraries
library(dplyr)
```

```{r}
# load students data frame
load("students.Rda")
```

```{r}
# view head of students
head(students)
```

```{r}
# remove % from score column
students <- students%>%
  mutate(score=gsub('\\%','',score))
head(students)

```

```{r}
# change score column to numeric
students <- students%>%
  mutate(score= as.numeric(score))
students

```