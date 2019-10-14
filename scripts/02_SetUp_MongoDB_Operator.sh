#! /bin/bash

# Source: https://docs.mongodb.com/kubernetes-operator/master/tutorial/install-k8s-operator/
# (1) GCP Kubernetes Cluster set-Up

# (2) Clone the MongoDB Enterprise Kubernetes Operator repo
#git clone https://github.com/mongodb/mongodb-enterprise-kubernetes.git

#
# (3) Create the namespace for your Kubernetes deployment.
kubectl create namespace mongodb

#
# Sanity check
kubectl get namespace

cd $HOME/GKE-Terraform-Cluster/scripts

# 
# Install the Custom Resource Definitions
#
kubectl apply -f ./mongodb-enterprise-kubernetes/crds.yaml

#
# Deploy the operator (5)
kubectl apply -f ./mongodb-enterprise-kubernetes/mongodb-enterprise.yaml
