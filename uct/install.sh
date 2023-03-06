#!/bin/bash

# install docker, minikube
sudo apt install docker.io curl -y 
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# set docker group
sudo usermod -aG docker $USER && newgrp docker

# start minikube
# minimum
# minikube start --kubernetes-version v1.16.0
# maximum
minikube start --kubernetes-version v1.22.0

#kubectl install 
curl -LO "https://storage.googleapis.com/kubernetes-release/release/v1.22.0/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

kubectl get po -A

kubectl apply -f pod.yaml

# reset minikube
# minikube delete --all
