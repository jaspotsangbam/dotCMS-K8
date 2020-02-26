#!/bin/bash

# create prereq.yaml (with NFS share IP inserted)
NFSIP=`gcloud beta filestore instances describe nfs-server --project=bootcamp-2018-k8s-demo --zone=us-central1-c --format=json | jq -r '.networks[0].ipAddresses[0]'`
echo $NFSIP
go run ./createpreyamlfile.go -nfsIP=$NFSIP

# Apply prerequisites:
kubectl apply -f prereq.yaml

# make license pack available
kubectl create configmap dotcmslicensepack --from-file=./license.zip
