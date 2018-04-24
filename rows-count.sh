#!/bin/bash
bin=`dirname $0`
bin=`cd $bin;pwd`

source tpcds-env.sh

echo "-*-*-*-*-*-*-*-*-*-" > rows_count
echo "start " >> rows_count
#count lines of each table
cat $tableNameList | while read table 
do
echo "select count(*) from $table;"
echo "table:" $table >>rows_count
$SPARK_HOME/bin/spark-sql --database $TPCDS_DBNAME -e "select count(*) from ${table};" >> rows_count 
echo "------------------" >> rows_count
done

echo "over" >> rows_count
echo "-*-*-*-*-*-*-*-*-*-" >> rows_count

