#!/bin/sh
MACHINES="ubuntu-k8s-rancher ubuntu-k8s-etcd ubuntu-k8s-workplane ubuntu-k8s-registry ubuntu-k8s-nfs ubuntu-k8s-minio ubuntu-k8s-node-1 ubuntu-k8s-node-2"
START_TIME=$(date +%s)
echo "Starting VMs"
echo "VMs to be started:["
echo $MACHINES
echo "]"
for virtual_machine in $MACHINES
do
  echo "---- Staring $virtual_machines ----"
  VBoxManage startvm $virtual_machine --type headless 
done
echo "---- All Machines started ----"
END_TIME=$(date +%s)
EXECUTION_TIME=$((START_TIME-END_TIME))
echo "---- EXECUTION TIME $EXECUTION_TIME seconds ----"