geth --datadir /data init private.json

geth --identity "YOYOU-DEV"  --rpcapi personal,db,eth,net,web3 --rpc --rpcaddr 0.0.0.0 --port "30303" --rpccorsdomain "*" --datadir /data --networkid 8907 console 
