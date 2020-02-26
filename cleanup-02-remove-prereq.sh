#!/bin/bash

kubectl delete configmap dotcmslicensepack

kubectl delete -f prereq.yaml
rm ./prereq.yaml

