ipg<-read.csv("./PatentData/ipg170523.csv")
ipg<-read.csv("./ipg170523//ipg170523.csv")
ipa<-ipa[-which(rowMeans(is.na(ipa))>0.98),]
ipa<-ipa[,-which(colMeans(is.na(ipa))>0.50)]
colMeans(is.na(ipa))
head(ipa)
ipa[1:10,1:10]         
title<-colnames(ipa[37])
country<-colnames(ipa[74])
abstract<-colnames(ipa[55])
pdesc<-colnames(ipa[73])
ipa[73]==ipa[74]
NAperc<-colMeans(is.na(ipa[,1:1061]))
colMeans(is.na(ipa[74]))
colnames(ipa)
class(NAperc)
print(NAperc)
as.data.frame(NAperc)
ipa[,"*abstract*"]
colnames(ipa)
appinfo<-colnames(ipa[39:41])
claims<- colnames(ipa[88:97])
fileoforigin<-colnames(ipa[100])
ipa<-ipa[1:105]
colnames(ipa)
figdesc<-colnames(ipa[79])
inventors<-colnames(ipa[46:49])
apploc<-colnames(ipa[46:49])
inventors
write.csv(c(ref, title, inventors, appinfo, abstract, claims, pdesc, figdesc, fileoforigin), "colnames.csv")
colnames<-read.csv("colnames.csv")
colnames<-as.vector(colnames[,2])
colnames
ipa<-ipa[colnames]
write.csv(ipa, "ipa170525.csv")
