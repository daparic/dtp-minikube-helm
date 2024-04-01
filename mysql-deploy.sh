#!/bin/sh
#

alias kubectl='minikube kubectl --'

kubectl apply -f mysql-secret.yaml
kubectl apply -f mysql-storage.yaml
kubectl apply -f mysql-deployment.yaml

mysql_ipaddr=$(kubectl get svc | awk '/^mysql/ {print $3}')
sed -bi "s/jdbc:mysql:\/\/[0-9.]\+:/jdbc:mysql:\/\/$mysql_ipaddr:/g" values.yaml
