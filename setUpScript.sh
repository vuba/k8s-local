#!/bin/sh
echo "This script will provision the host and two nodes"

echo "===============Provisioning rancher=============="
echo "==Piping logs to rancher/rancher_provisionig.log="
cd rancher
vagrant up > rancher_provisionig.log
cd ..
echo "=========Provisioning rancher - FINISHED========="

echo "================Provisioning host==============="
echo "====Piping logs to host/host_provisionig.log===="
cd host
vagrant up > host_provisionig.log
cd ..
echo "==========Provisioning host - FINISHED=========="

echo "================Provisioning etcd==============="
echo "====Piping logs to etcd/etcd_provisionig.log===="
cd etcd
vagrant up > etcd_provisionig.log
cd ..
echo "==========Provisioning etcd - FINISHED=========="

echo "=============Provisioning node-1================"
echo "==Piping logs to node-1/node-1_provisionig.log=="
cd node-1
vagrant up > node-1_provisionig.log
cd ..
echo "=========Provisioning node-1 - FINISHED========="

echo "=============Provisioning node-2================"
echo "==Piping logs to node-2/node-2_provisionig.log=="
cd node-2
vagrant up > node-2_provisionig.log
echo "=========Provisioning node-2 - FINISHED========="