#!/bin/bash
# 
# setup an ansible awx server
# Note that you must download the ansible awx setup package from http://www.ansibleworks.com/download/
# and place that file in this directory
# 

# if the version changes, update this
ansible_awx="awx-setup-1.2.2"


# install epel
sudo rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

# for some reason this is installing as disabled today - enable epel
sudo sed  -i '0,/enabled=0/s/enabled=0/enabled=1/' /etc/yum.repos.d/epel.repo

# install ansible
sudo yum -y install ansible


# extract awx
sudo tar -xzvf /vagrant/${ansible_awx}.tar.gz -C /var/tmp/
cd /var/tmp/${ansible_awx}

# update default pw
sudo perl -p -i -e 's/pg_password: AWsecret/pg_password: 12345/' group_vars/all

# setup
sudo ./setup.sh

# config iptables
sudo cp /vagrant/iptables /etc/sysconfig/iptables
sudo service iptables restart
