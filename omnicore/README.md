1. 进入docker目录

2. 执行命令创建镜像 "docker build -t pupudaye/omnicore-dev ." 或者 sh create

3. 可执行docker run -tid --name omnicore-dev -p 19001:19001 -v /data/blockchain/omni:/data  pupudaye/omnicore-dev -txindex  命令测试创建镜像

4. 容器创建成功后执行 docker exec -ti omnicore-dev /bin/bash 进入容器

5. 执行omnicore-cli omni_getinfo查看安装信息和omnicore信息

6. 查看src/omnicore/doc/rpc-api.md文档可以看到RPC借口，可以测试或者查看<a href="https://github.com/OmniLayer/omnicore/blob/master/src/omnicore/doc/rpc-api.md">API Doc</a>

<font color="red">此软件镜像为技术调研使用,不可用于生产环境</font>