> install.packages("RSQLite")
##package ‘bit’ successfully unpacked and MD5 sums checked
##package ‘bit64’ successfully unpacked and MD5 sums checked
##package ‘blob’ successfully unpacked and MD5 sums checked
##package ‘DBI’ successfully unpacked and MD5 sums checked
##package ‘memoise’ successfully unpacked and MD5 sums checked
> library(DBI)
> conn <- dbConnect(RSQLite::SQLite(), "C:/Users/Валерия/AppData/Local/Temp/Rtmp4s5cb3/downloaded_package")
##created connection with library
> conn <- dbConnect(RSQLite::SQLite(), "E:\\Study\\RSQLite\\db\\datasets.sqlite")
> res <- dbSendQuery(conn, "SELECT Title, EventType as Events FROM Papers ORDER BY Title")
