#!/bin/bash
bin=`dirname $0`
bin=`cd $bin;pwd`

source $bin/tpcds-env.sh
$SPARK_HOME/bin/spark-sql $@ -f $bin/create-table-sql/create-external-tables.sql
