#!/usr/bin/env bash
#set -x

sudo apt update
sudo apt --fix-broken install
sudo apt install -y \
  software-properties-common \
  git \
  net-tools \
  curl \
  wget \
  apt-transport-https \
  build-essential \
  python3-dev \
  python3-pip \
  python3-setuptools \
  zsh \
  cmake \
  tree \
  pkg-config \
  libgflags-dev libsnappy-dev zlib1g-dev libbz2-dev liblz4-dev libzstd-dev

wget https://dl.google.com/go/go1.12.15.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.12.15.linux-amd64.tar.gz

echo "export GOROOT=/usr/local/go" >> ~/.profile
echo "export GOPATH=~/go" >> ~/.profile
echo "export PATH=\$PATH:/usr/local/go/bin:\$PWD/bin:\$GOPATH/bin" >> ~/.profile
source ~/.profile
rm go1.12.15.linux-amd64.tar.gz
sudo apt install -y go-dep

sudo apt install resolvconf
sudo echo "nameserver 8.8.4.4" >> /etc/resolvconf/resolv.conf.d/head
sudo echo "nameserver 8.8.8.8" >> /etc/resolvconf/resolv.conf.d/head
sudo service resolvconf restart

git clone https://github.com/facebook/rocksdb.git@v6.6.4
cd rocksdb
export USE_RTTI=1 && make shared_lib
sudo make install-shared
sudo ldconfig

go get github.com/thanhphu/godb-bench/...
go install github.com/thanhphu/godb-bench

cd $GOPATH/src/github.com/thanhphu/godb-bench
./run_write.sh
./run_read.sh