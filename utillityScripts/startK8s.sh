#!/bin/sh
cd ../ansible
ansible-playbook -i hosts configure-k8s-controllplane.yml
ansible-playbook -i hosts configure-k8s-etcd.yml
ansible-playbook -i hosts configure-k8s-node-1.yml
ansible-playbook -i hosts configure-k8s-node-2.yml
