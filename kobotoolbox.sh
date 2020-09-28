#!/bin/bash

#upadte and upgrade the system
apt update
apt upgrade

#Install current stable release of Docker Compose:
curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

#install a few prerequisite packages which let apt use packages over HTTPS

apt install apt-transport-https ca-certificates curl software-properties-common

#Then add the GPG key for the official Docker repository to your system

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#Add the Docker repository to APT sources

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

#upadte and upgrade the system

apt update

apt upgrade

#Make sure you are about to install from the Docker repo instead of the default Ubuntu

apt-cache policy docker-ce

#install Docker:

sudo apt install docker-ce

git clone https://github.com/kobotoolbox/kobo-install

cd kobo-install

git checkout stable


