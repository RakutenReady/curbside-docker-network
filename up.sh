#!/bin/sh

docker-compose up -d

# HACK: This is a dirty hack to disable the wildcard matching. The proper fix
# would be to create a new docker container but that is left as an exercise to
# the reader.
docker container exec devdns rm /etc/dnsmasq.d/hostmachine.conf
