#!/bin/bash

ergo ops wget https://dl.k8s.io/v1.23.6/kubernetes-client-linux-amd64.tar.gz
tar xzvfC ~/.ergo/cache/kubernetes-client-linux-amd64.tar.gz /tmp
mv /tmp/kubernetes/client/bin/kubectl /usr/local/bin
cp -a /usr/local/bin/kubectl ~/.ergo/bin/ergo-kubectl
rm -rf ~/.ergo/cache/kubernetes-client-linux-amd64.tar.gz
rm -rf /tmp/kubernetes