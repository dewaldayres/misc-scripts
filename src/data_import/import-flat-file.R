
#
# import flat file 
#

f <- "file-name.txt"
contents <- read.csv(file=f, header=F)
contents <- as.character(contents$V1)