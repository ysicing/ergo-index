#!/bin/bash

ergo ops wget https://github.com/cilium/cilium-cli/releases/latest/download/cilium-linux-amd64.tar.gz
tar xzvfC ~/.ergo/cache/cilium-linux-amd64.tar.gz /usr/local/bin
rm -rf ~/.ergo/cache/cilium-linux-amd64.tar.gz