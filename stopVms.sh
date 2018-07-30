#!/bin/sh
echo "Stopping k8s vms"
echo "Stopping rancher"
VBoxManage controlvm k8s-rancher poweroff soft
echo "Stopping k8s-host"
VBoxManage controlvm k8s-host poweroff soft
echo "Stopping k8s-node-1"
VBoxManage controlvm k8s-node-1 poweroff soft
echo "Stopping rancher"
VBoxManage controlvm k8s-minio poweroff soft
echo "Stopping rancher"
VBoxManage controlvm k8s-nfs poweroff soft
echo "Stopping rancher"
VBoxManage controlvm k8s-registry poweroff soft
echo "All VMS stopped"
