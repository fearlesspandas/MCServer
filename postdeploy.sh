#!/bin/bash
cd /home/ec2-user
REPONAME="MCServer"
REPOHOST="https://github.com/fearlesspandas"
yum update -y
yum install git -y
git clone $REPOHOST/$REPONAME.git
chmod +x -R $REPONAME
chmod 777 -R $REPONAME
cd $REPONAME
nohup ./install_dependencies.sh > install_logs &
