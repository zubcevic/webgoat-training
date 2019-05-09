#!/bin/bash

export WEBGOAT_PORT=8443
export WEBGOAT_SSLENABLED=true

export GOATURL=https://127.0.0.1:$WEBGOAT_PORT
export WOLFURL=http://127.0.0.1:9090
export WEBGOAT_KEYSTORE=goatkeystore.pkcs12
 
pkill -9 -f webgoat-server-8.0.0.M24.jar
pkill -9 -f webwolf-8.0.0.M24.jar
 
sleep 1
nohup java -Dfile.encoding=UTF-8 -jar webgoat-server-8.0.0.M24.jar --spring.config.location=application-webgoat.properties > webgoat.log &

sleep 10
 
nohup java -Dfile.encoding=UTF-8 -jar webwolf-8.0.0.M24.jar --spring.config.location=application-webwolf.properties > webwolf.log &
