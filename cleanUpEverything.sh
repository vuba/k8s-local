#!/bin/sh
echo "==========Starting cleanup=========="
cd node-2
vagrant halt && vagrant destroy -f
cd ..
cd node-1
vagrant halt && vagrant destroy -f
cd ..
cd host
vagrant halt && vagrant destroy -f
cd ..
cd rancher
vagrant halt && vagrant destroy -f
cd ..
echo "==========Finished cleanup=========="