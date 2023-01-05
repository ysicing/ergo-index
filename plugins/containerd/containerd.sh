#!/bin/bash

ergo ops wget https://github.com/containerd/containerd/releases/download/v1.6.14/cri-containerd-cni-1.6.14-linux-amd64.tar.gz

tar -C / -xzf /root/.ergo/cache/cri-containerd-cni-1.6.14-linux-amd64.tar.gz

systemctl enable containerd.service

[ -d "/etc/containerd" ] || mkdir -p /etc/containerd

containerd config default > /etc/containerd/config.toml

systemctl start containerd

ctr version
