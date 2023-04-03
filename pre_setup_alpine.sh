#!/bin/sh

# Set IP address of eth0
ip addr add 10.0.0.29/24 dev eth0

# Enable SSH for root user
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config

# Restart SSH service
rc-service sshd restart
