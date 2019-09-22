rm(list=ls())
projectPathStr="C:/Users/alex1/Desktop/getTWSEdata"
stockno="2882"
nowDateSplit=strsplit(as.character(Sys.Date()),"-")
nowDate=paste0(nowDateSplit[[1]][1],nowDateSplit[[1]][2],nowDateSplit[[1]][3])
startDate="20190901"
endDate=nowDate

isDownloadData=TRUE

# Download Basic Data
#source("DownloadBasicData.R")

# Show Basic Data
#source("ShowBasicData.R")

# Analysis
#source("BasicData.R")