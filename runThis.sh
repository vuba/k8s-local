#!/bin/sh
cd vagrant
./provisionVms.sh
cd ..
./removeSshEntries.sh
cd ansible
ansible-playbook -i hosts dist-upgrade.yml
ansible-playbook -i hosts configure-k8s-user.yml
ansible-playbook -i hosts install-k8s-docker.yml
ansible-playbook -i hosts install-rancher.yml
cd ..