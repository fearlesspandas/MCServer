#!/bin/bash
cd $SERVER_HOME
nohup java -Xmx3G -jar spigot-1.16.3.jar --nogui > logs.out &
