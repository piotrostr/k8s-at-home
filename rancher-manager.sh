#!/bin/bash

sudo docker run \
  --privileged \
  --restart=unless-stopped \
  -p 80:80 \
  -p 443:443 \
  --name rancher-manager \
rancher/rancher
