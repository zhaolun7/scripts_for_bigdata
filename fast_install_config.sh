INSTALL_PATH=/home/bigdata2
JAVA_HOME=/home/rcp/java

USER=`whoami`
USER_HOME=`cd ~;pwd`
#===================HADOOP====================

HADOOP_HOME=$INSTALL_PATH/hadoop
HDFS_REPLICATION=1
HDFS_NAMENODE=CS-101
#HDFS_DATANODE=CS-101,CS-102
HDFS_DATANODE=CS-101
HDFS_DATANODE_DATA_DIR=/data1/hadoop_data

HDFS_NAMENODE_ODPS="-Xmx1024m -Xms1024m"

YARN_RESOURCEMANAGER=$HDFS_NAMENODE
YARN_NODEMANAGER=$HDFS_DATANODE
YARN_NODEMANAGER_CPU_VCORES=16
YARN_NODEMANAGER_MEM_MB=40960

# HADOOP HA include HDFS and YARN
HADOOP_HA=false 
# HDFS HA
HDFS_HA_CLUSTER=mycluster
HDFS_HA_NAMENODE_2=CS-102
HDFS_HA_ZK_ROOT=CS-101:2181
HDFS_HA_JOURNALNODE="CS-101:8485;CS-102:8485;CS-103:8485"
# YARN HA
YARN_HA_CLUSTER=$HDFS_HA_CLUSTER
YARN_HA_RESOURCEMANAGER_2=$HDFS_HA_NAMENODE_2
YARN_HA_ZK_ROOT=$HDFS_HA_ZK_ROOT

# TODO
#===================ZOOKEEPER==========================
ZOOKEEPER_HOME=$INSTALL_PATH/zookeeper
ZOOKEEPER_NODE=CS-101
ZOOKEEPER_PORT=2181

#====================HIVE==============================
HIVE_HOME=$INSTALL_PATH/hive
HIVE_NODE=CS-101

HIVE_MYSQL_HOSTNAME=CS-101
HIVE_MYSQL_PORT=3306
HIVE_MYSQL_USERNAME=root
HIVE_MYSQL_PASSWORD=Admin@123
HIVE_MYSQL_DATABASE=hive

HIVE_HA=false
HIVE_HA_METASTORE=CS-101,CS-102
HIVE_HA_HIVESERVER2=CS-101,CS-102
HIVE_HA_ZK_ROOT=CS-101:2181
#====================SPARK=============================
SPARK_HOME=$INSTALL_PATH/spark
