```{r}
message <- "I change based on a condition."
if (TRUE){
  message <- "I execute this when true!"
}else {
  message <- "I execute this when false!"
}
print(message)
```