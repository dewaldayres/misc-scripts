
file <- read.csv("C:/Temp/NormalisationIssue/F01Extract20180610.txt")
names(file)[1]<-"record"

file$pan <- trimws(substring(file$record, 37, 55))
file$post_tran_id <- trimws(substring(file$record, 120, 127))
file$record <- NULL

write.csv(file, file="C:/Temp/NormalisationIssue/processed/F01Extract20180610.csv", quote=F, row.names=F)



