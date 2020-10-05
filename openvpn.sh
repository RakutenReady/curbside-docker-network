#!/bin/sh

sleep 5
sudo openvpn --config /var/tmp/dockervpn/client-config/172.17.0.0.ovpn
