#!/bin/bash

#set bucket for map/player data storage
BUCKET_NAME=chickeninthehat

#set java version (yum package name)
JAVA_LIBRARY=java-1.8.0-openjdk.x86_64

#set spigot version
SPIGOT_VERSION=1.16.3
SPIGOT_LIBRARY=https://cdn.getbukkit.org/spigot/spigot-$SPIGOT_VERSION.jar
SPIGOT_INSTALL=`ls | grep spigot`
#set scala version
SCALA_VERSION=2.12.10
SCALA_LIBRARY=http://downloads.lightbend.com/scala/$SCALA_VERSION/scala-$SCALA_VERSION.rpm

#install dependencies
sudo yum update -y
sudo yum install $JAVA_LIBRARY -y
wget $SPIGOT_LIBRARY
wget $SCALA_LIBRARY
sudo yum install scala-$SCALA_VERSION.rpm -y

#pull existing server data
mkdir server
aws s3 cp --recursive s3://$BUCKET_NAME/server/ ./server
sudo cp $SPIGOT_INSTALL server/
#set server home

ADD_HOME="export SERVER_HOME=`pwd`/server"
ADD_ADMIN="export ADMIN_HOME=`pwd`"
echo $ADD_HOME >> /home/ec2-user/.bashrc
echo $ADD_ADMIN >> /home/ec2-user/.bashrc
source /home/ec2-user/.bashrc

