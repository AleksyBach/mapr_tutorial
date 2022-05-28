#!/bin/bash

CERT_PATH=~/testsslkeys

openssl genrsa -des3 -out $CERT_PATH/rootCA-private.key 4096
openssl req -x509 -new -nodes -key $CERT_PATH/rootCA-private.key -sha256 -days 1024  -subj "/C=XX/O=MapR/OU=MapR PS/CN=m2.ipabhome.local" -out $CERT_PATH/rootCA.pem
