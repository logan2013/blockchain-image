<h2>基本步骤</h2>

1. 执行命令创建镜像 "docker build -t pupudaye/bitcoin-testnet-box ." 或者 sh create

2. 执行 sh run 创建测试容器

3. 进入容器 docker exec -ti bitcoin-testnet-dev /bin/bash

4. 启动网络节点 sh init.sh

特别说明：区块链启动节点的命令不能做成容器启动，具体原因未知。所以需要进入容器启动

<h2>init.sh 脚本说明</h2>

#这是创建bit测试网络节点

bitcoind  -conf=/root/.bitcoin/bitcoin.conf -datadir=/root/data -testnet -daemon

#这是创建本地区块链节点

bitcoind  -conf=/root/.bitcoin/bitcoin.conf -datadir=/root/data -regtest -daemon

<h2>bitcoin.conf 说明</h2>

<a href="https://github.com/bitcoin/bitcoin/blob/master/contrib/debian/examples/bitcoin.conf">详细参考官方说明</a>

#运行连接RPC的终端IP

rpcallowip=0.0.0.0/0

#连接rpc使用的账号和密码

rpcuser=bsspirit

rpcpassword=98jfidayelqlvjieJDIjda


<h2>高级用法</h2>

如果想自定义配置文件和启动命令可以利用docker volume实现对应文件的覆盖

/root/.bitcoin/bitcoin.conf 配置文件

/root/data 数据目录

/root/init.sh 启动脚本

例如：
可以采用 docker -v /localpath:/root/.bitcoin/bitcoin.conf 此命令不完整只做参考

