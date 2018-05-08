#!/bin/sh
echo "==========Stopping machines=========="
cd node-2
vagrant halt
cd ..
cd node-1
vagrant halt
cd ..
cd etcd
vagrant halt
cd ..
cd host
vagrant halt
cd ..
cd rancher
vagrant halt
cd ..
echo "==========Machines stoped=========="