#!/bin/bash
echo -e '\n*****Remove old version*****\n'
sudo apt-get remove -y docker docker-engine
sudo sleep 2
#additional packages
echo -e '\n*****Install additinal packages*****\n'
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
sleep 2
#add Docker's official GPG key
echo -e '\n*****Add repository for target server*****\n'
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sleep 2
#update apt repository
echo -e '\n*****Update and Install docker comunity edition*****\n'
sudo apt-get update
sudo apt-get install -y docker-ce
sleep 2
