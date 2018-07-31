#!/bin/sh
sudo curl https://releases.rancher.com/install-docker/17.03.sh | sh
sudo usermod -aG docker vagrant
