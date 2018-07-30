#!/bin/sh
echo "importing k8s vms"
echo "Staring rancher"
VBoxManage import vms/k8s-rancher.ova
sleep 15
echo "importing k8s-host"
VBoxManage import vms/k8s-host.ova
sleep 15
echo "importing k8s-node-1"
VBoxManage import vms/k8s-node-1.ova
echo "importing k8s-registry"
VBoxManage import vms/k8s-registry.ova
echo "importing k8s-minio"
VBoxManage import vms/k8s-minio.ova
echo "importing k8s-nfs"
VBoxManage import vms/k8s-nfs.ova
echo "All VMS imported"
