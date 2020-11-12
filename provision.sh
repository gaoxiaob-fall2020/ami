#!/bin/bash

sleep 30
sudo apt-get update

# Install python and pip
sudo apt-get -y install python3-pip
python3 --version
pip3 --version
# alias python=python3
# alias pip=pip3

# Install unzip
sudo apt-get install unzip

# Install dependecies for mysqlclient
sudo apt-get -y install python3-dev default-libmysqlclient-dev build-essential

# Install AWS CodeDeploy agent
sudo apt-get -y install ruby
sudo apt-get -y install wget
cd /home/ubuntu
echo $region
wget https://aws-codedeploy-${region}.s3.${region}.amazonaws.com/latest/install 
chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent status

# Install AWS CloudWatch agent
wget https://s3.${region}.amazonaws.com/amazoncloudwatch-agent-${region}/ubuntu/amd64/latest/amazon-cloudwatch-agent.deb
sudo dpkg -i -E ./amazon-cloudwatch-agent.deb
echo '<-----'
whoami
echo '----->'

# Install nginx server
sudo apt-get -y install nginx