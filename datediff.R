#開始日期
a=as.numeric(substr(datestr,1,4)) 
b=as.numeric(substr(datestr,5,6)) 
c=01

#現在日期
now=Sys.Date()
nowstr=strsplit(as.character(Sys.Date()),"-")
a1=nowstr[[1]][1]
b1=nowstr[[1]][2]
c1=01

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

while( a<=a1){
  datediff=rbind(datediff,paste0(a,mon(b),days(c)))
  b=as.numeric(b)+1
  if(b==12){
    datediff=rbind(datediff,paste0(a,mon(b),days(c)))
    a=as.numeric(a)+1
    b=01
  }else if(a==a1 && b==b1){
    datediff=rbind(datediff,paste0(a,mon(b),days(c)))
    break
  }
}
datediff



