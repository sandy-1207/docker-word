#!/bin/bash
sudo apt-get install apt-transport-https curl ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y
sudo apt-get install docker-ce -y
sudo curl -L https://github.com/docker/compose/releases/download/1.29.2/docker-compose-Linux-x86_64 -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
git clone https://github.com/amar-m-cloud/docker-compose.git
cd docker-compose/
sudo docker-compose up -d
sudo docker-compose images
