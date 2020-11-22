rm(list=ls())
projectPathStr="C:/Users/alex1/Desktop/getTWSEdata/"
nowDateSplit=strsplit(as.character(Sys.Date()),"-")
nowDate=paste0(nowDateSplit[[1]][1],nowDateSplit[[1]][2],nowDateSplit[[1]][3])
startDate="20200101"
endDate=nowDate

encodingStr="utf-8"

baseDataPathStr=paste0(projectPathStr,"BasicData/ShowBasicData.R")
getCompanyPathStr=paste0(projectPathStr,"BasicData/GetCompanyList.R")

# Download Basic Data
source(getCompanyPathStr,encoding = encodingStr)
# get all company list
# stocknolist=c(companylist)
# stocknolist=c(companylist[1:length(companylist)])

# asign company list
# stocknolist=c("2330","2882")

# isDownloadData=TRUE
# source("DownloadBasicData.R")
# downloadData(stocknolist)

# Show Basic Data
stockno="2330"
source(baseDataPathStr,encodingStr)
# addBBands(n=20,sd=2,maType = "EMA")
# addEMA(n=20,col = "blue")
# addEMA(n=60,col = "purple")


# Analysis
#source("BasicData.R")