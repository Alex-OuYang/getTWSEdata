if(!("RODBC" %in% rownames(installed.packages()))){
  install.packages("RODBC")
}
require(RODBC)

# https://turbofuture.com/computers/Connect-to-SQL-Server-from-R

conn_str = odbcConnect("SQLSERVER")
stockDS=sqlQuery(conn_str,"EXEC SP_GETSECURITYDATA @SECURITY_CODE='2330',@START_DATE='2010-01-01',@END_DATE='2021-01-25'")
#stockDS=sqlQuery(conn_str,"SELECT * FROM SECURITYINFO")

