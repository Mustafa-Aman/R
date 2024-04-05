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
# view the head of students
head(students)
```

```{r}
# separate the full_name column
students <- students%>%
  separate(full_name,c('first_name','last_name'),' ',extra = 'merge') 
head(students)

```