#!/usr/bin/env bash

# Install kubectl on Ubuntu
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

# deploy on single machine
# verify the virtualization is supported with non-empty output
grep -E --color 'vmx|svm' /proc/cpuinfo

curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube
sudo mv ./minikube /usr/local/bin/minikube

# confirm installation
minikube start --vm-driver=virtualbox
minikube status
minikube stop
