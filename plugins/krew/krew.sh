#!/bin/bash

(
  set -x; cd "$(mktemp -d)" &&
  OS="$(uname | tr '[:upper:]' '[:lower:]')" &&
  ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
  KREW="krew-${OS}_${ARCH}" &&
  ergo ops wget "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz" &&
  tar zxvf "/root/.ergo/cache/${KREW}.tar.gz" &&
  ./"${KREW}" install krew
  mv ./"${KREW}" /usr/local/bin/kubectl-krew
  cp -a /usr/local/bin/kubectl-krew ~/.ergo/bin/ergo-krew
  rm -rf "/root/.ergo/cache/${KREW}.tar.gz"
)