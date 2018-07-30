#!/bin/sh
echo "Starting k8s vms"
echo "Staring registry"
SLEEP_TIMER=30
VBoxManage startvm k8s-registry --type headless
sleep ${SLEEP_TIMER}
echo "Staring minio"
VBoxManage startvm k8s-minio --type headless
sleep ${SLEEP_TIMER}
echo "Staring nfs"
VBoxManage startvm k8s-nfs --type headless
sleep ${SLEEP_TIMER}
echo "Staring rancher"
VBoxManage startvm k8s-rancher --type headless
sleep ${SLEEP_TIMER}
echo "Starting k8s-host"
VBoxManage startvm k8s-host --type headless
sleep ${SLEEP_TIMER}
echo "Starting k8s-node-1"
VBoxManage startvm k8s-node-1 --type headless
echo "All VMS started"
