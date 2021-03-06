# setwd(paste0(projectPathStr,"/BasicData") )
if(!("quantmod" %in% rownames(installed.packages()))){
  install.packages("quantmod")
}
if(!("jsonlite" %in% rownames(installed.packages()))){
  install.packages("jsonlite")
}
library(quantmod)
library(jsonlite)

stockFunc=function(stockno,datediff){
  datediff=as.matrix(datediff)
  STOCK=c()
  
  for(i in c(1:nrow(datediff))){
    stockurl=paste0("http://www.twse.com.tw/exchangeReport/STOCK_DAY?date=",datediff[i,],"&stockNo=",stockno)
    urldata=url(stockurl)
    stock=fromJSON(urldata,flatten=T)
    
    #print(stock)
    
    STK=cbind(stock$data[,1],stock$data[,4],stock$data[,5],stock$data[,6],stock$data[,7],stock$data[,9])
    STOCK=rbind(STOCK,STK)
    Sys.sleep(sample(10, 1))
  }
  
  #print(stock)
  
  STOCK[,2]=as.numeric(STOCK[,2])#O
  STOCK[,3]=as.numeric(STOCK[,3])#P
  STOCK[,4]=as.numeric(STOCK[,4])#C
  STOCK[,5]=as.numeric(STOCK[,5])#L
  STOCK[,6]=as.numeric(gsub(",","",STOCK[,6]))#V
  
  Sys.setenv(TZ = "Asia/Taipei")
  timeCharVector = as.character(STOCK[,1])
  TimeY=substr(timeCharVector,1,3)
  TimeY=as.numeric(TimeY)+1911
  timeCharVector=paste0(TimeY,substr(timeCharVector,4,9))
  timeVector=strptime(timeCharVector,"%Y/%m/%d",tz=Sys.timezone())
  timeVector=as.POSIXct(timeVector)
  
  STOCK=cbind(as.numeric(STOCK[,2]),as.numeric(STOCK[,3]),as.numeric(STOCK[,4]),as.numeric(STOCK[,5]),as.numeric(STOCK[,6]))
  STOCK=xts(STOCK,as.POSIXct(timeVector))
  colnames(STOCK)=c("Open","High","Low","Close","Volume")
  
  return(STOCK)
}

#View(STOCK) 
