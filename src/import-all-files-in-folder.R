
dir <- "C:/Users/dewalda/Dropbox/McDonalds/McDonalds Workshop V2.0/ACB request"
files <- list.files(path=dir)

for (file in files)
{
  if (str_detect(file, fixed("D0.SQ320.201806")))
  {
    file <- gsub('"', '', file)
    print(file)
    x <- read.csv(paste(dir,file, sep="/"))
  }
}


                    

