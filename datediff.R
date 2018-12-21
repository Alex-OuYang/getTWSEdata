#開始日期
a=as.numeric(substr(startDate,1,4))
b=as.numeric(substr(startDate,5,6)) 
c=01

#現在日期

a1=as.numeric(substr(endDate,1,4))
b1=as.numeric(substr(endDate,5,6)) 
c1=as.numeric(substr(endDate,7,8)) 

datediff=c()

days=function(days){
  if(days<10){
    days=as.character(paste0(0,days)) 
  }
  return(days)
} 

mon=function(mon){
  if(mon<10){
    mon=as.character(paste0(0,mon)) 
  }
  return(mon)
}

year=c(a:a1)
if(length(year)>1){
  for(i in year){
    if(i!=year[length(year)]){#非最後一年
      if(i==head(year,1)){
        for(k in c(b:12)){
          datediff=rbind(datediff,paste0(i,mon(k),days(c)))
        }
      }else{
        for(l in c(1:12)){
          datediff=rbind(datediff,paste0(i,mon(l),days(c)))
        }
      }
    }else if(i==year[length(year)]){#最後一年
      for(j in c(1:b1)){
        datediff=rbind(datediff,paste0(i,mon(j),days(c)))
      }
    }
    
  }
}else{
  for(j in c(b:b1)){
    datediff=rbind(datediff,paste0(a,mon(j),days(c)))
  }
}

datediff



