#! /bin/bash
# 
# (6) Deployment Continues
# https://docs.mongodb.com/kubernetes-operator/master/tutorial/create-project-using-configmap/#create-k8s-project
kubectl apply -f opsMgr.yaml

#
# 
# (7) Invoke the Kubernetes command to verify your configmap
kubectl describe configmaps opsmanager-config -n mongodb

#
# Deploy the Replica Set
kubectl apply -f replicaset.yaml

# 
#
# Track Status of RS
kubectl get mdb rsdemo -n mongodb -o yaml -w

#
# Make the cluster externally connectable
kubectl apply -f replicaset-external-connect.yaml

#
# Get operators in Mongodb NS
kubectl get services -n mongodb

#
# get nodes in GCP Cluster
kubectl describe nodes

#
# Get External IP 
kubectl get nodes -o jsonpath='{ $.items[*].status.addresses[?(@.type=="ExternalDNS")].address }'


#
# Nodeport should look like 27017:30994
# mongo --host <External DNS> --port 30994
