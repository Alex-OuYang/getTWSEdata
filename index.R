rm(list=ls())
projectPathStr="C:/Users/alex1/Desktop/getTWSEdata"
stockno="2330"
nowDateSplit=strsplit(as.character(Sys.Date()),"-")
nowDate=paste0(nowDateSplit[[1]][1],nowDateSplit[[1]][2],nowDateSplit[[1]][3])
startDate="20191101"
endDate=nowDate

isDownloadData=TRUE

# Download Basic Data
stocknolist=c("2330","2412")
source("DownloadBasicData.R")
downloadData(stocknolist)

# Show Basic Data
#source("ShowBasicData.R")

# Analysis
#source("BasicData.R")