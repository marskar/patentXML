lines   <- readLines("ipa170525.xml")
start   <- grep('<?xml version="1.0" encoding="UTF-8"?>',lines,fixed=T)
end     <- c(start[-1]-1,length(lines))
#install.packages("XML")
library(XML)

get_names<- function(i){
  txt <- paste(lines[start[i]:end[i]],collapse="\n")
  print(i)
  xml<-unlist(xmlToList(xmlTreeParse(txt,asText=T)))
  names(xml)
}

AllNames<-unique(unlist(lapply(1:length(start), get_names)))
length(AllNames)


AllNames<-readRDS("AllNames.Rds")
XMLtoString<- function(i){
  txt <- paste(lines[start[i]:end[i]],collapse="\n")
  print(i)
  xml<-unlist(xmlToList(xmlTreeParse(txt,asText=T)))
  xml[AllNames] #This makes the names & number of columns equal
}

XMLlist<-lapply(1:length(start),XMLtoString)
#install.packages("data.table")
library(data.table)
m <- rbindlist(XMLlist)

