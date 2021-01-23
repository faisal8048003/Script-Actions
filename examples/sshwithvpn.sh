#!/bin/bash

# VPN AUTHENTICATION
# Scripts Actions app supports server-side OpenVPN mode. You can use the secret manager to attach
# a OVPN config file. The app will create automatically VPN connections for all your scripts.
# SSH AUTNENTICATION (TODO:)
# Please use app's secret manager to set your SSH private key

echo "You can access your DC via OVPN..."

# Assuming your key is attached to your secret manager, we're waiting for some time for the VPN to be initiated.
sleep 6

# Pull last 100 lines of the system logs
ssh user@my.vpnaccessiblehost.com tail -100 /var/log/syslog
