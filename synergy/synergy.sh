#!/bin/bash

## server
/usr/bin/synergys -f --name vvvi-box --config /etc/synergy.conf

## client
/usr/bin/synergyc -f --name vvvi-descktop server-ip
/usr/bin/synergyc -f --name vvvi-home server-ip


