args <- commandArgs(TRUE)
file <- args[1]
if(file.exists(file)){
  lines   <- readLines(file)
} else {
  print("xml file not found. Make sure the file is in the current working directory")
}
lines   <- readLines(file)
start   <- grep('<?xml version="1.0" encoding="UTF-8"?>',lines,fixed=T)
end     <- c(start[-1]-1,length(lines))
if(file.exists("colnames.csv")){
  colnames<-unlist(read.csv("colnames.csv"))
} else {
  print("colnames.csv file not found. I don't know which columns to extract")
}
library(XML)

file<-strsplit(file, "\\.")[[1]][1] #filename minus extension
XMLtoString<- function(i){
  txt <- paste(lines[start[i]:end[i]],collapse="\n")
  print(paste0(i/length(start)*100))
  xml_string<-unlist(xmlToList(xmlTreeParse(txt,asText=T)))
  xml_string<-xml_string[colnames] #This makes the names & number of columns equal
  write.csv(unname(xml_string),file = paste0("./",file,"/",file, "_" , i,".csv"))  
}

lapply(1:length(start),XMLtoString)
