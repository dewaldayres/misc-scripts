library(RODBC)
myServer <- "rufio.database.windows.net"
myUser <- "dewalda"
myPassword <- "Underoath01"
myDatabase <- "RShinyTest"
myDriver <- "SQL Server" # Must correspond to an entry in the Drivers tab of "ODBC Data Sources"

connectionString <- paste0(
  "Driver=", myDriver, 
  ";Server=", myServer, 
  ";Database=", myDatabase, 
  ";Uid=", myUser, 
  ";Pwd=", myPassword)
# This query simulates a table by generating a rowset with one integer column going from 1 to 1000
sqlQuery <- "
WITH nb AS (SELECT 0 AS n UNION ALL SELECT n+1 FROM nb where n < 9)
SELECT n1.n+10*n2.n+100*n3.n+1 FROM nb n1 CROSS JOIN nb n2 CROSS JOIN nb n3
"
conn <- odbcDriverConnect(connectionString)
df <- sqlQuery(conn, sqlQuery)
close(conn) 

str(df)