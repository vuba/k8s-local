#!/bin/sh
mkdir logs
MACHINE_DIRECTORIES="rancher etcd workplane registry nfs minio node-1 node-2"
START_TIME=$(date +%s)
echo "Setting machine to provision"
echo "Machines to be provisioned:["
echo $MACHINE_DIRECTORIES
echo "]"
cd ../vagrant
for virtual_machines in $MACHINE_DIRECTORIES
do
  echo "---- PROVISIONING $virtual_machines ----"
  cd $virtual_machines
  vagrant up 2>&1 | tee ../logs/$virtual_machines.logs
  cd ..
done
echo "---- DONE PROVISIONING ----"
END_TIME=$(date +%s)
EXECUTION_TIME=$((START_TIME-END_TIME))
echo "---- EXECUTION TIME $EXECUTION_TIME seconds ----"