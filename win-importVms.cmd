@echo off
echo "importing k8s vms"
echo "importing k8s-registry"
VBoxManage import vms/k8s-registry.ova
echo "importing k8s-minio"
VBoxManage import vms/k8s-minio.ova
echo "importing k8s-nfs"
VBoxManage import vms/k8s-nfs.ova
echo "Staring rancher"
VBoxManage import vms/k8s-rancher.ova
echo "importing k8s-host"
VBoxManage import vms/k8s-host.ova
echo "importing k8s-node-1"
VBoxManage import vms/k8s-node-1.ova

