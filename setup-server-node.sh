#!/bin/bash

# check if has curl, otherwise install
if ! command -v curl &> /dev/null
then
    apt-get update
    apt-get install -y curl
fi

# check if has rke2 otherwise install
if ! command -v rke2 &> /dev/null
then
    curl -sfL https://get.rke2.io | sh -
fi

# check if enabled, otherwise enable
if ! systemctl is-enabled rke2-server.service &> /dev/null
then
    systemctl enable rke2-server.service
fi

# check if running, otherwise start
if ! systemctl is-active rke2-server.service &> /dev/null
then
    systemctl start rke2-server.service
fi

journalctl -u rke2-server -f
