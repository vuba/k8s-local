#!/bin/sh
sudo docker run -d --name rancher --restart=unless-stopped -p 80:80 -p 443:443 rancher/rancher