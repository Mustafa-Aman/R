---
title: "Introduction to R Syntax"
output: html_notebook
---
```{r}

message <- 'Should I pack an umbrella?'
weather <- 'cloudy'
high_chance_of_rain <- TRUE
if (weather == 'cloudy' & high_chance_of_rain){
  message <- "Pack umbrella!"
}else{
  message <- "No need for umbrella!"
}
print(message)


```