
#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=asia1-etc.ethermine.org:4444
WALLET=0xf339db86fafc99f85619a0d55e2d1e47ef9a840a.lolMinerWorker

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETCHASH --pool $POOL --user $WALLET $@
