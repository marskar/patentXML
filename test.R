args <- commandArgs(TRUE)
file <- args[1]
paste0(strsplit(file, "\\.")[[1]][1],".csv")
