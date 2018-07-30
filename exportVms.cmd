@echo off
VBoxManage export k8s-host -o vms/k8s-host.ova
VBoxManage export k8s-rancher -o vms/k8s-rancher.ova
VBoxManage export k8s-node-1 -o vms/k8s-node-1.ova
VBoxManage export k8s-registry -o vms/k8s-registry.ova
VBoxManage export k8s-minio -o vms/k8s-minio.ova
VBoxManage export k8s-nfs -o vms/k8s-nfs.ova
