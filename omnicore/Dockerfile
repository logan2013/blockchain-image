# Version 0.0.1
FROM ubuntu
# install dependencies
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:bitcoin/bitcoin
RUN apt-get update
RUN apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils
RUN apt-get install -y libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev
RUN apt-get install -y libdb4.8-dev libdb4.8++-dev
# download omnicore from git
RUN apt-get install -y git
RUN apt-get install -y pkg-config
RUN git clone https://github.com/OmniLayer/omnicore.git /home/omnicore/
WORKDIR /home/omnicore
# compile and install omnicore
RUN /home/omnicore/autogen.sh
RUN /home/omnicore/configure
RUN make
#RUN make install
ADD bitcoin.conf /home/omnicore/bitcoin.conf
WORKDIR /home/omnicore/src
EXPOSE 19001
ENTRYPOINT ["./omnicored","-conf=/home/omnicore/bitcoin.conf -datadir=/data -testnet"]
