#!/bin/sh

set -ex
# Update sources.list
sudo sed -i "s/archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list

# Install packages
sudo apt-get update && sudo apt-get install -y  --no-install-recommends \
    curl \
    ca-certificates \
    build-essential \
    htop \
    ssh \
    unzip \
    vim \
    wget \
    pkg-config \
    apt-transport-https \
    software-properties-common \
    git 

# Install gcc6
sudo apt-get install -y gcc-6 g++-6
sudo rm /usr/bin/gcc /usr/bin/g++
sudo ln -s /usr/bin/gcc-6 /usr/bin/gcc && sudo ln -s /usr/bin/g++-6 /usr/bin/g++

# Install docker (https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04)
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install -y docker-ce
# Executing the Docker Command Without Sudo (Optional)
sudo usermod -aG docker ${USER}

# Install docker-compose(https://www.digitalocean.com/community/tutorials/how-to-install-docker-compose-on-ubuntu-18-04)
# F**K GFW
# sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo curl -L "https://get.daocloud.io/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o  /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version

ssh-keygen -t rsa -P "" -C ${USER} -f ~/.ssh/id_rsa