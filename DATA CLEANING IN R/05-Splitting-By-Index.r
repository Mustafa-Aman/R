---
title: "Data Cleaning in R"
output: html_notebook
---

```{r message=FALSE, warning=FALSE}
# load libraries
library(dplyr)
library(stringr)
```

```{r}
# load students data frame
load("students.Rda")
```

```{r}
# print columns of students
colnames(students)
```

```{r}
# view head of students
head(students)
```

```{r}
# add gender and age columns
students <- students%>%
  mutate(gender = str_sub(gender_age,1,1))%>%
  mutate(age = str_sub(gender_age,2))
head(students)


```

```{r}
# drop gender_age column
students <- students%>%
  select(-gender_age)
head(students)


```