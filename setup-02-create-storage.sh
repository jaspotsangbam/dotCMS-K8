#!/bin/bash

# Create gce disks:
gcloud compute disks create --size=200GB dbdata --zone us-central1-c
gcloud compute disks create --size=200GB esstatic --zone us-central1-c

# create NFS share
gcloud filestore instances create nfs-server --tier=STANDARD --file-share=name="vol1",capacity=1TB --network=name="default" --zone=us-central1-c
