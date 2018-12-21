setwd("C:/Users/alex1/Desktop/getTWSEdata")
stockno="2330"
nowDateSplit=strsplit(as.character(Sys.Date()),"-")
nowDate=paste0(nowDateSplit[[1]][1],nowDateSplit[[1]][2],nowDateSplit[[1]][3])
startDate="20180601"
endDate=nowDate
source("stock.R")

# View(STOCK)
chartSeries(STOCK,up.col = "red",dn.col = "green",theme = "white",name = stockno)
