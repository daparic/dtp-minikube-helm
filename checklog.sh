#!/bin/sh
#

alias kubectl='minikube kubectl --'

kubectl get pod -n parasoft-dtp-namespace | grep -w Running 
while [ $? -ne 0 ];do
    kubectl get pod -n parasoft-dtp-namespace | grep -w Running 
    printf "."
    sleep 5
done
# kubectl logs dtp-helm-dtp-pod -n parasoft-dtp-namespace

sleep 5
minikube service dtp-service -n parasoft-dtp-namespace
