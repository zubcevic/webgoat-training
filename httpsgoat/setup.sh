#!/bin/bash

export WEBGOAT_PORT=8443
export WEBGOAT_SSLENABLED=true

export GOATURL=https://127.0.0.1:$WEBGOAT_PORT
export WOLFURL=http://127.0.0.1:9090

export WEBGOAT_KEYSTORE=goatkeystore.pkcs12

