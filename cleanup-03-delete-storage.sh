#!/bin/bash

gcloud filestore instances delete nfs-server --zone=us-central1-c --quiet

gcloud compute disks delete dbdata --zone us-central1-c --quiet
gcloud compute disks delete esstatic --zone us-central1-c --quiet

