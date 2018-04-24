# 执行步骤：

## 1. 设置环境变量
```shell
vi tpcds-env.sh
```
- 数据量
- 环境变量
- 设置数据生成节点```vi nodenum.sh```

## 2. 生成测试数据

```shell
cd tpcds-kit/tools
make clean
make
cd ../..
./gen-data.sh
```

## 3. 创建hdfs数据目录

```shell
./hdfs-mkdirs.sh
```

## 4. 上传数据到hdfs

```shell
./upload-data.sh
```

## 5. 创建外部表
```shell
create-external-tables.sh
```

## 6. 创建对应的分区表、并对事实表进行格式化、压缩

```shell
create-parquet-partition-tables.sh
```
## 7. 生成查询sql

```shell
./gen-sql.sh
```

## 8. Spark Sql 方式执行测试
```shell
./spark-query-tpcds.sh
```

## 9. Beeline方式执行测试
```shell
./spark-query-tpcds-beeline.sh
```
注意需要先启动对应的thrift server

## 10. 说明

当前tpcds-kit目录中的query_templates已为最新修改完成后的templates
query_templates_modify目录为修改的sql语句,适配Spark

原项目为 https://github.com/cloudera/impala-tpcds-kit
本项目只为方便在Spark端测试，如有侵权，立刻删除。
