rm(list=ls())
projectPathStr="C:/Users/alex1/Desktop/getTWSEdata"
setwd(projectPathStr)
nowDateSplit=strsplit(as.character(Sys.Date()),"-")
endDate=paste0(nowDateSplit[[1]][1],nowDateSplit[[1]][2],nowDateSplit[[1]][3])
startDate="20200101"
#endDate=nowDate

encodingStr="utf-8"

# 檔案路徑
baseDataPathStr=paste0(projectPathStr,"/BasicData/ShowBasicData.R")
getCompanyPathStr=paste0(projectPathStr,"/BasicData/GetCompanyList.R")
downloadPathStr=paste0(projectPathStr,"/BasicData/DownloadBasicData.R")
getStockDataFromFilePathStr=paste0(projectPathStr,"/BasicData/FuncGetStockDataFromFile.R")


# 取得上市公司列表
# source(getCompanyPathStr,encoding = encodingStr)

# get all company list
# stocknolist=c(companylist)
# stocknolist=c(companylist[1:length(companylist)])

# asign company list

# stocknolist=company[,2][1:length(company[,2])]
# isDownloadData=TRUE
# source(downloadPathStr,encoding = encodingStr)
# downloadData(stocknolist)

# Get Stock Data From Download CSV Data
source(getStockDataFromFilePathStr,encoding = encodingStr)
StockData=GetStockFromFile(2882)


# Show Basic Data
# stockno="2330"
# source(baseDataPathStr,encodingStr)
# addBBands(n=20,sd=2,maType = "EMA")
# addEMA(n=20,col = "blue")
# addEMA(n=60,col = "purple")


# Analysis
#source("BasicData.R")