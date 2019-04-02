#!/bin/bash
 
#export JAVA_HOME=$PWD/jdk-11.0.2
#export PATH=$JAVA_HOME/bin:$PATH
 
pkill -9 -f webgoat-server-8.0.0.M24.jar
pkill -9 -f webwolf-8.0.0.M24.jar
 
sleep 1
nohup java -jar webgoat-server-8.0.0.M24.jar > webgoat.log &
#timeout 30 bash -c 'until printf "" 2>>/dev/null >>/dev/tcp/localhost/8080; do sleep 1; done'
 
nohup java -jar webwolf-8.0.0.M24.jar > webwolf.log &
#timeout 30 bash -c 'until printf "" 2>>/dev/null >>/dev/tcp/localhost/9090; do sleep 1; done'
