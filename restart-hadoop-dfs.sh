#!/bin/bash -eu

# stop datanode and namenode
stop-dfs.sh
stop-yarn.sh
# delete cache
sudo rm -rf /var/hadoop/hdfs/*

hdfs namenode -format
start-dfs.sh
start-yarn.sh
hadoop jar /home/hadoop/hadoop-2.6.0/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.6.0.jar pi 100 100
