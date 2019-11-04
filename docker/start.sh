#!/bin/bash

##pkill -9 -f webgoat-server.jar
##pkill -9 -f webwolf.jar
cd /home/webgoat 
sleep 1
java -Dfile.encoding=UTF-8 -jar webgoat.jar --server.address=0.0.0.0  > webgoat.log &

sleep 10
 
java -Dfile.encoding=UTF-8 -jar webwolf.jar --server.address=0.0.0.0 > webwolf.log &

tail -300f webgoat.log
