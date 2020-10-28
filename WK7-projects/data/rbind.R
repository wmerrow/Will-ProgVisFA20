rm(list = ls(all = TRUE))

# library(dplyr)

file_list <- list.files(pattern="*.csv")

for (f in file_list) {
  assign(f, read.csv(file = f, header = TRUE, stringsAsFactors = FALSE))
}

rbind(file_list)