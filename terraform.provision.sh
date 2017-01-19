#!/bin/bash
cd /vagrant/
yum update
yum install -y vim git tree wget unzip

#Install Terraform
if [ -f "/vagrant/terraform_0.8.4_linux_amd64.zip" ]
then
        echo "terraform_0.8.4_linux_amd64.zip exists"
else
        wget https://releases.hashicorp.com/terraform/0.8.4/terraform_0.8.4_linux_amd64.zip
fi

unzip terraform_0.8.4_linux_amd64.zip -d /home/vagrant/bin
