#!/bin/bash

gcloud beta filestore instances delete nfs-server --zone=us-central1-c --quiet

gcloud beta compute disks delete dbdata --zone us-central1-c --quiet
gcloud beta compute disks delete esstatic --zone us-central1-c --quiet

