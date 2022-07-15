#!/bin/bash

# ergo ops wget https://get.helm.sh/helm-v3.9.1-linux-amd64.tar.gz
ergo ops wget https://dl.ysicing.me/helm-v3.9.1-linux-amd64.tar.gz
tar xzvfC ~/.ergo/cache/helm-v3.9.1-linux-amd64.tar.gz /tmp
cp -a /tmp/linux-amd64/helm /usr/local/bin
cp -a /tmp/linux-amd64/helm ~/.ergo/bin/ergo-helm
rm -rf /tmp/linux-amd64
