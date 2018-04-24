# /bin/bash
bin=`dirname $0`
bin=`cd $bin;pwd`

source $bin/tpcds-env.sh

cp -r ${TPCDS_ROOT}/query_templates ${TPCDS_ROOT}/query_templates_bak

for i in `ls $TPCDS_ROOT/query_templates/query*.tpl`;
do
  echo "define _END= \"\";" >> $i
done

if [ -d "$QUERY_SQL_DIR" ]; then
  rm -rf $QUERY_SQL_DIR
fi

mkdir $QUERY_SQL_DIR

for i in `ls $TPCDS_ROOT/query_templates/query*.tpl`;
do
  ${TPCDS_ROOT}/tools/dsqgen -template `basename $i` -directory $TPCDS_ROOT/query_templates -DISTRIBUTIONS ${TPCDS_ROOT}/tools/tpcds.idx -dialect netezza -scale $TPCDS_SCALE_FACTOR -OUTPUT_DIR $QUERY_SQL_DIR  2>&1 >> /dev/null
  filename=`basename $i` 
  filename=`echo $filename | awk -F'.' '{print $1}'`
  mv $QUERY_SQL_DIR/query_0.sql $QUERY_SQL_DIR/$filename.sql
done 


rm -rf ${TPCDS_ROOT}/query_templates
mv ${TPCDS_ROOT}/query_templates_bak ${TPCDS_ROOT}/query_templates
