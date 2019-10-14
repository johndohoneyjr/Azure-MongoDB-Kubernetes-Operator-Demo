
#! /bin/bash

kubectl -n mongodb \
  create secret generic mongo-cloud-mgr \
  --from-literal="user=gryxoxod" \
  --from-literal="publicApiKey=6fb2aac2-0dde-4c0c-aecf-12ff4c95413c"

kubectl describe secrets/mongo-cloud-mgr -n mongodb