#!/bin/sh
#

kubectl get pod -n testpod
kubectl logs dtp-helm-dtp-pod -n testpod
