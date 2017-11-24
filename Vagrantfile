# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "senglin/win-10-enterprise-vs2015community"
  config.vm.box_version = "1.0.0"
  config.vm.communicator = "winrm"
  config.winrm.usernme = "vagrant"
  config.winrm.password = "vagrant"
  config.vm.provider "virtualbox" do |vb|
       vb.memory = 8192
       vb.cpus = 4
       vb.gui = true
       vb.name ="DevBox"
    end
end
