FROM ubuntu:14.04
MAINTAINER Sean Lavine <lipu829@qq.com>

# add bitcoind from the official PPA
# install bitcoind (from PPA) and make
RUN apt-get update && \
	apt-get install --yes software-properties-common && \
	add-apt-repository --yes ppa:bitcoin/bitcoin && \
	apt-get update && \
	apt-get install --yes bitcoind make

WORKDIR /root
RUN mkdir data
# copy the testnet-box files into the image
ADD bitcoin.conf /root/.bitcoin/bitcoin.conf
ADD init.sh /root/init.sh

# expose two rpc ports for the nodes to allow outside container access
EXPOSE 18333 8332
CMD ["/bin/bash"]
