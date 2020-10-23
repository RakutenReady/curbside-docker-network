#!/bin/sh

ls ./client-config/*.ovpn | head -n 1 | xargs sudo sudo openvpn --config
