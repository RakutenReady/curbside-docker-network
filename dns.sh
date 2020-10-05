#!/bin/sh

sudo mkdir /etc/resolver
sudo sh -c 'echo "nameserver 127.0.0.1\nport 5300" > /etc/resolver/docker'

sleep 8
docker run --rm --name devdns -p 5300:53/udp -e DNS_DOMAIN=docker -v /var/run/docker.sock:/var/run/docker.sock --rm ruudud/devdns
