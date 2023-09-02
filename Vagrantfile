# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu2004"

  config.vm.provider "virtualbox" do |v|
    v.memory = 4096 
    v.cpus = 2
  end

  config.vm.provider "vmware_desktop" do |v|
    v.allowlist_verified = true
    v.memory = 4096
    v.cpus = 2
  end

  config.vm.provision "shell", path: "provisioners/remnux-install.sh", privileged: true, reboot:true
end
