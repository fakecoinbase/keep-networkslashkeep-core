geth --datadir /data --mine --verbosity=6 --etherbase=${ETHERBASE} --networkid=${NETWORK_ID} --bootnodes=`cat /bootnode/bootnodes` --ethstats=${HOSTNAME}:${MONITOR_SECRET}@${MONITOR_SERVICE}