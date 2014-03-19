# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "defender" do |defender|
    defender.vm.box = "base"
    defender.vm.hostname = "defender"
    defender.vm.network :private_network, ip: "192.168.33.20"

    # Install latest chef
    defender.vm.provision :shell, path: "scripts/upgrade_chef"

    # Provision with Chef
    defender.vm.provision :chef_solo do |chef|
      chef.roles_path = "roles"
      chef.add_role "defender"
    end
  end

  config.vm.define "attacker" do |attacker|
    attacker.vm.box = "base"
    attacker.vm.hostname = "attacker"
    attacker.vm.network :private_network, ip: "192.168.33.10"

    # Install latest chef
    attacker.vm.provision "shell", path: "scripts/upgrade_chef"

    # Provision with Chef
    attacker.vm.provision :chef_solo do |chef|
      chef.roles_path = "roles"
      chef.add_role "attacker"
    end
  end

end
