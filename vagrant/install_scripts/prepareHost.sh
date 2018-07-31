#!/bin/bash
echo '[SCRIPT] -> Installing essential tools'
sudo apt-get update
sudo apt-get dist-upgrade -y
sudo apt-get update
sudo apt-get install -y git curl unzip rar unrar tmux \
    vim mc htop whois glances