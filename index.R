setwd("C:/Users/alex1/Desktop/getTWSEdata")
stockno="2882"
nowDateSplit=strsplit(as.character(Sys.Date()),"-")
nowDate=paste0(nowDateSplit[[1]][1],nowDateSplit[[1]][2],nowDateSplit[[1]][3])
startDate="20190101"
endDate=nowDate
source("datediff.R")
source("stock.R")

chartSeries(STOCK,up.col = "red",dn.col = "green",theme = "white",name = stockno)
# View(STOCK)
#addBBands(n=20,sd=2,maType = "EMA")
#addEMA(n=20,col = "blue")
#addEMA(n=60,col = "purple")
