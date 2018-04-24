#!/bin/bash
bin=`dirname $0`
bin=`cd $bin;pwd`

source $bin/tpcds-env.sh
source $bin/nodenum.sh

dataPath=${LOCAL_DATA_DIR}${NODENUM}

for fileName in `ls ${dataPath}`
do
 tmp=${fileName%_*}
 echo $tmp
 tableName=${tmp%_*}
 echo $tableName

 #file update to hdfs 
 hadoop fs -put -f $dataPath/$fileName ${FLATFILE_HDFS_ROOT}/$tableName   
done

