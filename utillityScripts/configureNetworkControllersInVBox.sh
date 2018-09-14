#!/bin/sh
MACHINES="ubuntu-k8s-rancher ubuntu-k8s-etcd ubuntu-k8s-workplane ubuntu-k8s-registry ubuntu-k8s-nfs ubuntu-k8s-minio ubuntu-k8s-node-1 ubuntu-k8s-node-2"
START_TIME=$(date +%s)
echo "Configuring VM network controllers"
echo "VMs to be configured:["
echo $MACHINES
echo "]"
for virtual_machine in $MACHINES
do
  echo "---- Configuring $virtual_machine ----"
  VBoxManage modifyvm $virtual_machine --nic1 hostonly
  VBoxManage modifyvm $virtual_machine --hostonlyadapter1 vboxnet0
  VBoxManage modifyvm $virtual_machine --nic2 nat
done
echo "---- Done configuring ----"
END_TIME=$(date +%s)
EXECUTION_TIME=$((START_TIME-END_TIME))
echo "---- EXECUTION TIME $EXECUTION_TIME seconds ----"