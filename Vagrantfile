# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end
  config.vm.define "terraform" do |terraform|
          terraform.vm.box =  "bmcgonigle/centos68"
	  terraform.vm.hostname = "terraform"
          terraform.vm.network :private_network, ip: "192.168.50.5", bridge: "eth0"
#	  terraform.vm.network "forwarded_port", guest: 80, host: 8010
	  terraform.vm.provision "shell",
            path: "terraform.provision.sh"
  end
end
