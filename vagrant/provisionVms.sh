#!/bin/sh
# mkdir logs
MACHINES="rancher host registry nfs minio node-1 node-2"
START_TIME=time
echo "Setting machine to provision"
echo "Machines to be provisioned:["
echo $MACHINES
echo "]"
for virtual_machines in $MACHINES
do
  echo "---- PROVISIONING $virtual_machines ----"
  cd $virtual_machines
  vagrant up 2>&1 | tee ../logs/$virtual_machines.logs
  cd ..
done
END_TIME=time
echo "---- DONE PROVISIONING ----"
EXECUTION_TIME=($START_TIME-$END_TIME)/1000
echo "---- EXECUTION TIME $EXECUTION_TIME seconds ----"