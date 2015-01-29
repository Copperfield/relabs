# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "async" do |async|
    async.vm.box = "hashicorp/precise64"
    async.vm.network "private_network", ip: "192.168.33.11"
    async.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbooks/async.yml"
    end
  end

  config.vm.define "web" do |web|
    web.vm.box = "hashicorp/precise64"
    web.vm.network "private_network", ip: "192.168.33.12"
    web.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbooks/web.yml"
    end
  end

end
