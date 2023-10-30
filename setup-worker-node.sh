#!/bin/bash

# check if has curl, otherwise install
if ! command -v curl &> /dev/null
then
    apt-get update
    apt-get install -y curl
fi

curl -sfL https://get.rke2.io | INSTALL_RKE2_TYPE="agent" sh -

# check if service enabled, otherwise enable
if ! systemctl is-enabled rke2-agent.service &> /dev/null
then
    systemctl enable rke2-agent.service
fi

# check if service running, otherwise start
if ! systemctl is-active rke2-agent.service &> /dev/null
then
    systemctl start rke2-agent.service
fi
