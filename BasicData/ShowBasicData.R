setwd(paste0(projectPathStr,"/BasicData") )
source("FuncDateDiff.R")
source("FuncGetStock.R")

datediff=datediffFunc(startDate = startDate,endDate = endDate)
STOCK=stockFunc(stockno = stockno,datediff = datediff)

chartSeries(STOCK,up.col = "red",dn.col = "green",theme = "white",name = stockno)
# View(STOCK)
# addBBands(n=20,sd=2,maType = "EMA")
# addEMA(n=20,col = "blue")
# addEMA(n=60,col = "purple")
