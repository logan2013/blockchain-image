本镜像只作为开发私链使用，创世区块为自定义的,如果需要创建生成环境区块链节点请查看<a href="https://hub.docker.com/r/ethereum/client-go/">官方geth镜像</a>

1. 进入docker目录

2. 执行命令创建镜像 "docker build -t pupudaye/geth-dev ." 或者 sh create

3. 可执行sh run 命令测试创建镜像

4. 容器创建成功后执行 docker exec -ti geth-dev  /bin/sh 进入容器
