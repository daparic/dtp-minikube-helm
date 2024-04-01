#!/bin/sh
#

minikube start --cpus 2 --memory=10g --disk-size=20g
# minikube mount d:/dtp_data/:/dtp_data

minikube ssh "sudo mkdir -m 777 /mnt/data"
minikube ssh "sudo mkdir -m 777 /dtp_data"
minikube ssh "sudo chown docker:docker /mnt/data"
minikube ssh "sudo chown docker:docker /dtp_data"
