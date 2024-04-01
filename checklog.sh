#!/bin/sh
#

alias kubectl='minikube kubectl --'

kubectl get pod -n parasoft-dtp-namespace
kubectl logs dtp-helm-dtp-pod -n parasoft-dtp-namespace
