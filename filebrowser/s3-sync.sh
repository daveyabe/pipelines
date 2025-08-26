#!/bin/sh
#ensure aws cli installation prior
/usr/local/bin/aws s3 sync s3://data-registry/somedata_dbr /data 2>> "/root/s3-sync-log.txt"
