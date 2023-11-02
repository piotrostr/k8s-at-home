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

# prepare environment
systemctl stop ufw
systemctl disable ufw

apt update && apt install nfs-common -y
apt autoremove -y

# check if enabled, otherwise enable
systemctl enable rke2-server.service

print "Please verify that the /etc/rancher/rke2/config.yaml file has the following content:"

cat <<EOF
server: https://[server_ip]:9345
token: [token]
EOF

read -p "Press enter to continue"

# check if running, otherwise start
if ! systemctl is-active rke2-server.service &> /dev/null
then
    systemctl start rke2-server.service
fi

journalctl -u rke2-server -f
