rm(list=ls())
projectPathStr="C:/Users/alex1/Desktop/getTWSEdata"
nowDateSplit=strsplit(as.character(Sys.Date()),"-")
nowDate=paste0(nowDateSplit[[1]][1],nowDateSplit[[1]][2],nowDateSplit[[1]][3])
startDate="20200101"
endDate=nowDate


# Download Basic Data
# source("GetCompanyList.R")
# get all company list
# stocknolist=c(companylist)
# stocknolist=c(companylist[1:length(companylist)])

# asign company list
# stocknolist=c("2330","2882")

# isDownloadData=TRUE
# source("DownloadBasicData.R")
# downloadData(stocknolist)

# Show Basic Data
# stockno="2882" 
# source("ShowBasicData.R")

# Analysis
#source("BasicData.R")