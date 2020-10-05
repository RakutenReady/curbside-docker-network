#!/bin/bash

SCRIPT_DIR="$(dirname $0)"

trap 'kill %1; kill %2' SIGINT

${SCRIPT_DIR}/vpn.sh & ${SCRIPT_DIR}/openvpn.sh  & ${SCRIPT_DIR}/dns.sh
