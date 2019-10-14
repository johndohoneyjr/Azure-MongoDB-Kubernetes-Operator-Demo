#! /bin/bash

terraform output kube_config > ~/.kube/aksconfig
export KUBECONFIG=~/.kube/aksconfig
kubectl get nodes
