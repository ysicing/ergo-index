#!/bin/bash

ergo ops wget https://get.helm.sh/helm-v3.8.0-linux-amd64.tar.gz
tar xzvfC ~/.ergo/cache/helm-v3.8.0-linux-amd64.tar.gz /tmp
mv /tmp/linux-amd64/helm /usr/local/bin
rm -rf /tmp/linux-amd64