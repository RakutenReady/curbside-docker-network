#!/bin/bash

docker run --init --rm -p 1194:1194/tcp --cap-add NET_ADMIN --network=bridge -v /var/run/docker.sock:/var/run/docker.sock:ro -v /var/tmp/dockervpn/client-config:/etc/openvpn/client-config fardjad/docker-network-exposer
