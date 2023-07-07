#!/usr/bin/env Rscript
system("set -ex")
 
## Passing Args
args <- commandArgs(trailingOnly=TRUE)
 
if (length(args) == 0 || (nchar(args[1])==0)) {
    HOST <- "dbc-2a6017bc-079e.cloud.databricks.com"
} else {
    HOST <- args[1]
}

if (length(args) == 0 || (nchar(args[2])==0)) {
    PORT <- "443"
} else {
    PORT <- args[2]
}

if (length(args) == 0 || (nchar(args[3])==0)) {
    HTTPPATH <- "/sql/1.0/warehouses/0c7a8dff9ad0e63c"
} else {
    HTTPPATH <- args[3]
}

if (length(args) == 0 || (nchar(args[4])==0)) {
    ThriftTrans <- "2"
} else {
    ThriftTrans <- args[4]
}

if (length(args) == 0 || (nchar(args[5])==0)) {
    SSL <- "1"
} else {
    SSL <- args[5]
}

if (length(args) == 0 || (nchar(args[6])==0)) {
    AUTHMECH <- "3"
} else {
    AUTHMECH <- args[6]
}

if (length(args) == 0 || (nchar(args[7])==0)) {
    CATALOG <- "hive_metastore"
} else {
    CATALOG <- args[7]
}

if (length(args) == 0 || (nchar(args[8])==0)) {
    QUERY <- "SELECT * FROM default.diamonds LIMIT 2"
} else {
    QUERY <- args[8]
}

if (length(args) == 0 || (nchar(args[9])==0)) {
    OUTPUT_NAME <- "Demonstration"
} else {
    OUTPUT_NAME <- args[9]
}

# Database credentials. These must be set in "secrets" in the environment
KEY_USERNAME <- Sys.getenv(c("API_KEY"))
SECRET_PASSWORD <- Sys.getenv(c("API_SECRET"))