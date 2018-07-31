#!/bin/sh
cd ~/.ssh
cat /home/vagrant/.ssh/my_rsa.pub >> /home/vagrant/.ssh/authorized_keys
