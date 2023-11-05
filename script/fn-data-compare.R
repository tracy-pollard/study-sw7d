# enhance standard dataframe comparison functions

data.compare <- function(df1, df2,...) {
  
  library(tidyverse)
  library(data.table)
  
  dt1_ord <- as.data.table(df1) %>% arrange(...)
  dt2_ord <- as.data.table(df2) %>% arrange(...)
  
  return(data.table::all.equal(dt1_ord, dt2_ord, ignore.col.order=TRUE))
  
}

# sample checks

# first <- data.frame(
#   Name = c("Jack", "Jack", "Matty", "Sam"),
#   Age = c(10, 12, 8, 6),
#   Pocket = c(10.5, 20, 600, 3)
# )
# 
# # expect to fail when compare to first: Sam aged 7 instead of 6
# second <- data.frame(
#   Name = c("Sam", "Jack", "Jack", "Matty"),
#   Age = c(7, 10, 12, 8),
#   Pocket = c(3, 10.5, 20, 600)
# )
# 
# # expect to pass: even though order of rows and columns are not the same
# third <- data.frame(
#   Pocket = c(3, 10.5, 20, 600),
#   Name = c("Sam", "Jack", "Jack", "Matty"),
#   Age = c(6, 10, 12, 8)
# )
# 
# check2 <- data.compare(df1 = first, df2 = second, Name, Age)
# check3 <- data.compare(df1 = first, df2 = third, Name, Age)
