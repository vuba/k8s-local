#!/bin/sh
./removeSshEntries.sh
cd utillityScripts/
./provisionVms.sh
cd ../ansible
ansible-playbook -i hosts dist-upgrade.yml
ansible-playbook -i hosts setUp-network-controller.yml
echo "=============================================="
echo "SHUTING DOWN MACHINES TO CONFIGURE NETWORK CONTROLLERS IN VIRTUAL BOX"
echo "SLEEPING FOR 1 MINUTE"
echo "=============================================="
sleep 60
cd ../utillityScripts
./configureNetworkControllersInVBox.sh
sleep 10
./startVms.sh
echo "=============================================="
echo "MACHINES STARTED"
echo "SLEEPING FOR 3 MINUTES TO ALLOW MACHINES TO BOOT"
echo "=============================================="
sleep 180
cd ../ansible
ansible-playbook -i hosts configure-k8s-user.yml
ansible-playbook -i hosts install-k8s-docker.yml
ansible-playbook -i hosts install-rancher.yml
cd ../..
# cat hosts >> ~/.ssh/hosts