# setwd(paste0(projectPathStr,"/BasicData") )
if(!("jsonlite" %in% rownames(installed.packages()))){
  install.packages("jsonlite")
}
library(jsonlite)

companyurl="https://quality.data.gov.tw/dq_download_json.php?nid=18419&md5_url=9791ec942cbcb925635aa5612ae95588"

urldata=url(companyurl)
company=fromJSON(urldata,flatten=T)

companylist=cbind(company[,2])#股票代號列表

#View(companylist)
