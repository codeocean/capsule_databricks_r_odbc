#!/usr/bin/env Rscript

source("config.R")

library(odbc)
library(DBI)

## Establish the Connection
con <- dbConnect(odbc::odbc(),
  .connection_string = sprintf("Driver=/opt/simba/spark/lib/64/libsparkodbc_sb64.so;UID=%s;HTTPPath=%s;PWD=%s;host=%s;Port=%s;ThriftTransport=%s;SSL=%s;AuthMech=%s;Catalog=%s;",KEY_USERNAME,HTTPPATH,SECRET_PASSWORD,HOST,PORT,ThriftTrans,SSL,AUTHMECH,CATALOG))

# SQL Query
res <- dbSendQuery(con,QUERY)

# Save Output
output <- dbFetch(res)

# Write results
write.csv(output, file=sprintf("../results/%s.csv",OUTPUT_NAME))


