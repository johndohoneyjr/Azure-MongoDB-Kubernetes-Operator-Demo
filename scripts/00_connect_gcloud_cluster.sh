#! /bin/bash


#
# Azure Portal for dohoneydemos --https://portal.azure.com/#home

az login

#make sure environment is properly set up
# ARM_SUBSCRIPTION_ID=3efd4-some-value-c0ff6d4b
# ARM_CLIENT_SECRET=c479-some-values-fb879af6c
# ARM_TENANT_ID=7193-some-values-c2e89
# ARM_CLIENT_ID=1a93-some-values-0b54bb8
#
# TF_VAR_client_secret=efd4-some-value-c0ff6d4b
# TF_VAR_tenant_id=7193-some-values-c2e89
# TF_VAR_client_id=1a93-some-values-0b54bb8
# TF_VAR_subscription_id=3efd4-some-value-c0ff6d4b
#
# Get External IP 
kubectl get nodes -o jsonpath='{ $.items[*].status.addresses[?(@.type=="ExternalDNS")].address }'
echo
echo "Be sure to add external IPs to API Whitelist..." 

#
# Cluster Nodes Status
#
kubectl get nodes
