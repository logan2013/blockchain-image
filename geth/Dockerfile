FROM ethereum/client-go
MAINTAINER pupudaye <lipu8829@qq.com
EXPOSE 8545 8546 30303 30303/udp
ADD private.json /root/.ethereum/private.json
ADD init.sh /root/.ethereum/init.sh
RUN chmod 755 /root/.ethereum/init.sh
WORKDIR /root/.ethereum
ENTRYPOINT ["/bin/sh","/root/.ethereum/init.sh"]
