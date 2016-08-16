# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # redis
  config.vm.define "redis1" do |redis1|
    redis1.vm.provider "virtualbox" do |v|
      v.name = "redis1"
    end
    redis1.vm.box = "ubuntu/trusty64"
    redis1.vm.hostname = "redis1"
    redis1.vm.network "private_network", ip: "192.168.33.10"
  end

  # resque
  config.vm.define "resque1" do |resque1|
    resque1.vm.provider "virtualbox" do |v|
      v.name = "resque1"
      v.cpus = 2
      v.memory = 2048
    end
    resque1.vm.box = "ubuntu/trusty64"
    resque1.vm.hostname = "resque1"
    resque1.vm.network "private_network", ip: "192.168.33.20"
  end

  # resque-web
  config.vm.define "resque_web" do |resque_web|
    resque_web.vm.provider "virtualbox" do |v|
      v.name = "resque_web"
    end
    resque_web.vm.box = "ubuntu/trusty64"
    resque_web.vm.hostname = "resque_web"
    resque_web.vm.network "private_network", ip: "192.168.33.30"
  end
end
