Steps, must not have any previously existing minikube cluster instance. If there is, then delete it first:
```
./minikube-start.sh
./mysql-deploy.sh
./install.sh 
./checklog.sh 
```

How I got these yaml files, using gitbash shell in Windows:
```
export HELM_EXPERIMENTAL_OCI=1
helm pull oci://registry-1.docker.io/parasoft/dtp-helm --version 2023.2.0 --untar
```
