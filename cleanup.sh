#!/bin/bash

./cleanup-01-undeploy.sh
./cleanup-02-remove-prereq.sh
./cleanup-03-delete-storage.sh
./cleanup-04-delete-cluster.sh
