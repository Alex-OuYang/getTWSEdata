# setwd(paste0(projectPathStr,"/BasicData") )
source("FuncDateDiff.R")
source("FuncGetStock.R")

downloadData=function(stocknolist){
  for(i in stocknolist){
    print(i)
    datediff=datediffFunc(startDate = startDate,endDate = endDate)
    STOCK=stockFunc(stockno = i,datediff = datediff)
    
    for(j in c(1:nrow(datediff))){
      if(isDownloadData==TRUE){
        ouputPath=paste0(projectPathStr,"/StockData/",i,"/",substring(datediff[j],1,4),"/")
        dir.create(file.path(ouputPath),recursive = TRUE,mode = "0777",showWarnings = FALSE)
        write.csv(as.matrix(STOCK[substring(datediff[j],1,6)]), file = paste0(ouputPath,substring(datediff[j],1,6),".csv"))
        Sys.sleep(sample(1:5))
        print(paste0(substring(datediff[j],1,6),".csv Done-------"))
      }else{
        print("取得資料，無下載")
      }
    }
    
  }
}
