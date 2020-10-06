#!/bin/sh

echo "Adding macOS resolver configuration..."
sudo mkdir /etc/resolver
sudo sh -c 'echo "nameserver 127.0.0.1\nport 5300" > /etc/resolver/docker'
sudo sh -c 'echo "search docker" > /etc/resolver/searchdocker'
echo "done!"
