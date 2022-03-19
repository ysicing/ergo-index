#!/bin/bash

kubectl apply -f https://ghproxy.com/https://raw.githubusercontent.com/ysicing/default-backend/master/deploy.yaml
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm upgrade -i nginx-ingress-controller bitnami/nginx-ingress-controller -n kube-system \
    --set ingressClassResource.default=true \
    --set hostNetwork=true \
    --set reportNodeInternalIp=true \
    --set watchIngressWithoutClass=true \
    --set ingressClassResource.default=true \
    --set dnsPolicy=ClusterFirstWithHostNet \
    --set defaultBackend.enabled=false \
    --set metrics.enabled=true \
    --set defaultBackendService=kube-system/custom-default-backend
    