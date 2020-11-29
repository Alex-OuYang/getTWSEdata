# setwd(paste0(projectPathStr,"/BasicData") )
source("FuncDateDiff.R")
source("FuncGetStock.R")

datediff=datediffFunc(startDate = startDate,endDate = endDate)
STOCK=stockFunc(stockno = stockno,datediff = datediff)

chartSeries(STOCK,up.col = "red",dn.col = "green",theme = "white",name = stockno)
# View(STOCK)

