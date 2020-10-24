#!/bin/bash

REPONAME=MCServer
REPOHOST=""
sudo yum install git
git clone $REPOHOST/$REPONAME
chmod +x -R $REPONAME
cd $REPONAME
./install_dependencies.sh
