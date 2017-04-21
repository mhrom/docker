#!/bin/bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key del -
sudo apt-add-repository -y -r 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'
