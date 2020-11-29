GetStockFromFile=function(stockNo)
{
  StockData=c()
  stockDataPath=paste0(projectPathStr,"/StockData")
  
  stockYear=c(substr(startDate,1,4):substr(endDate,1,4))
  columnName=c("TXDate","Open","High","Low","Close","Volume")
  
  for(yaerIndex in stockYear)
  {
    readFilePath=list.files(paste0(stockDataPath,"/",stockNo,"/",yaerIndex), pattern="*.csv", full.names=TRUE)
    
    for(fileIndex in readFilePath)
    {
      readStockData=as.matrix(read.table(fileIndex,header = FALSE,sep= ",",skip=1,col.names = columnName))
      StockData=rbind(StockData,readStockData)
    }
    
  }
  
  # 轉為時間序列資料
  Sys.setenv(TZ = "Asia/Taipei")
  timeCharVector = as.character(StockData[,1])
  StockData=cbind(as.numeric(StockData[,2]),as.numeric(StockData[,3]),as.numeric(StockData[,4]),as.numeric(StockData[,5]),as.numeric(StockData[,6]))
  StockData=xts(StockData,as.POSIXct(timeCharVector))
  colnames(StockData)=c("Open","High","Low","Close","Volume")
  
  return(StockData)
}





