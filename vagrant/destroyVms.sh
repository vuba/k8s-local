#!/bin/sh
MACHINES="rancher host registry nfs minio node-1 node-2"
START_TIME=$(date +%s)
echo "Setting machine to destroy"
echo "Machines to be destroy:["
echo $MACHINES
echo "]"
for virtual_machines in $MACHINES
do
  echo "---- DESTROYING $virtual_machines ----"
  cd $virtual_machines
  vagrant destroy -f
  cd ..
done
END_TIME=time
echo "---- DONE DESTROYING ----"
END_TIME=$(date +%s)
EXECUTION_TIME=$((START_TIME-END_TIME))
echo "---- EXECUTION TIME $EXECUTION_TIME seconds ----"