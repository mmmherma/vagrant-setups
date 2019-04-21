#!/usr/bin/env bash

####
# Install Docker CE

# Debian
#apt-get update -y
#apt-get install dirmngr
#apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y
#curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
#apt-key fingerprint 0EBFCD88
#add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
#apt-get update -y
#apt-get install docker-ce docker-ce-cli containerd.io -y

# CentOS
yum update -y
yum remove docker \
           docker-client \
           docker-client-latest \
           docker-common \
           docker-latest \
           docker-latest-logrotate \
           docker-logrotate \
           docker-engine
yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
yum install docker-ce docker-ce-cli containerd.io -y
systemctl start docker

####
# Install Ansible

# Debian
#echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list
#apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
#apt-get update -y
#apt-get install ansible -y

# CentOS
yum install ansible -y
