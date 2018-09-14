#!/bin/sh
MACHINES="rancher etcd workplane registry nfs minio node-1 node-2"
START_TIME=$(date +%s)
echo "Machines to be halted:["
echo $MACHINES
echo "]"
cd ../vagrant
for virtual_machines in $MACHINES
do
  echo "---- HALTING $virtual_machines ----"
  cd $virtual_machines
  vagrant halt
  cd ..
done
echo "---- DONE HALTING ----"
END_TIME=$(date +%s)
EXECUTION_TIME=$((START_TIME-END_TIME))
echo "---- EXECUTION TIME $EXECUTION_TIME seconds ----"