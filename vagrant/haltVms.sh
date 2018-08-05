#!/bin/sh
mkdir logs
MACHINES="rancher host registry nfs minio node-1 node-2"
START_TIME=time
echo "Machines to be halted:["
echo $MACHINES
echo "]"
for virtual_machines in $MACHINES
do
  echo "---- HALTING $virtual_machines ----"
  cd $virtual_machines
  vagrant halt
  cd ..
done
END_TIME=time
echo "---- DONE HALTING ----"
EXECUTION_TIME=($START_TIME-$END_TIME)/1000
echo "---- EXECUTION TIME $EXECUTION_TIME seconds ----"