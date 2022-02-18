#!/bin/bash

ETCD_VER=v3.5.2

# choose either URL
GOOGLE_URL=https://storage.googleapis.com/etcd
GITHUB_URL=https://github.com/etcd-io/etcd/releases/download
DOWNLOAD_URL=${GITHUB_URL}

rm -rf /tmp/etcd-download-test && mkdir -p /tmp/etcd-download-test

ergo ops wget ${DOWNLOAD_URL}/${ETCD_VER}/etcd-${ETCD_VER}-linux-amd64.tar.gz
tar xzvf ~/.ergo/cache/etcd-${ETCD_VER}-linux-amd64.tar.gz -C /tmp/etcd-download-test --strip-components=1
rm -f ~/.ergo/cache/etcd-${ETCD_VER}-linux-amd64.tar.gz

mv /tmp/etcd-download-test/etcdctl /usr/local/bin/etcdctl
cp -a /usr/local/bin/etcdctl ~/.ergo/bin/ergo-etcdctl

rm -rf /tmp/etcd-download-test
