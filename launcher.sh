#!/bin/bash

POOL=asia1-etc.ethermine.org:5555
WALLET=0xf339db86fafc99f85619a0d55e2d1e47ef9a840a
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-lol

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETCHASH --pool $POOL --user $WALLET.$WORKER --tls 1 $@
