setwd(paste0(projectPathStr,"/BasicData") )
stockno=c("2882","2498")
source("FuncDateDiff.R")
source("FuncGetStock.R")

for(i in stockno){
  print(i)
  datediff=datediffFunc(startDate = startDate,endDate = endDate)
  STOCK=stockFunc(stockno = i,datediff = datediff)
  
  if(isDownloadData==TRUE){
    write.csv(as.matrix(STOCK), file = paste0(projectPathStr,"/StockData/",stockno[i],".csv"))
  }
}



