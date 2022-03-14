#!/bin/bash

ergo ops wget https://github.com/istio/istio/releases/download/1.13.2/istio-1.13.2-linux-amd64.tar.gz
tar xzvfC ~/.ergo/cache/istio-1.13.2-linux-amd64.tar.gz /tmp
mv /tmp/istio-1.13.2/bin/istioctl /usr/local/bin
rm -rf ~/.ergo/cache/istio-1.13.2-linux-amd64.tar.gz
cp -a /usr/local/bin/istioctl ~/.ergo/bin/ergo-istioctl
