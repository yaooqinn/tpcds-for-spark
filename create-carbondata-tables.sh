#!/bin/bash
bin=`dirname $0`
bin=`cd $bin;pwd`

source $bin/tpcds-env.sh

hive -f $bin/create-table-sql/create-load-carbondata-dimension.sql
hive -f $bin/create-table-sql/create-load-carbondata-fact.sql
