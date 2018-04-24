#!/bin/bash
bin=`dirname $0`
bin=`cd $bin;pwd`

source $bin/tpcds-env.sh

$SPARK_HOME/bin/spark-sql $@ -f $bin/create-table-sql/create-load-gzip-parquet-dimension.sql
$SPARK_HOME/bin/spark-sql $@ -f $bin/create-table-sql/create-load-gzip-parquet-partition-fact.sql
