#!/bin/bash

#check the server before configuring the Docekr environment

#OS
echo "===== OS Info ====="
cat /etc/os-release


#GPU
echo "===== GPU Info ====="
nvidia-smi || echo "NVIDIA GPU not available"

#Docker
docker --version || echo "Docker not installed"
docker run hello-world || echo "Docker run failed"

#Ansible
echo "===== Ansible Info ====="
ansible --version || echo "Ansible not installed"

#Python
python3 --version
pip3 list 2>/dev/null | grep jupyter || echo "pip3 or jupyter not found"

#Kubernetes Pod
echo "===== Kubernetes Pod Check ====="
cat /proc/1/cgroup | grep kube || echo "Not in K8s Pod?"

#Jupyter Tools
echo "===== Jupyter Tools ====="
jupyter --version || echo "Jupyter not installed"
jupyter nbconvert --version || echo "nbconvert not installed"