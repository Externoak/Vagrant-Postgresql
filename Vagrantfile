Vagrant.configure("2") do |config|
  config.vm.define "Postgresql1" do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.box_url = "https://atlas.hashicorp.com/ubuntu/boxes/trusty64"
    config.vm.hostname = "Postgresql1"
    
    config.vm.network :"public_network"
    config.vm.network "private_network", ip: "192.168.80.3"
    config.vm.synced_folder "postgresql/DB", "/home/vagrant/DB"
     
    
   config.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "Postgresql1"]
    end
  end

  config.vm.define "Postgresql2" do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.box_url = "https://atlas.hashicorp.com/ubuntu/boxes/trusty64"
    config.vm.hostname = "Postgresql2"

    config.vm.network :"public_network"
    config.vm.network "private_network", ip: "192.168.80.4"
    config.vm.synced_folder "postgresql/DB", "/home/vagrant/DB"
     
    
   config.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "Postgresql2"]
    end
  end

 config.vm.provision :ansible do |ansible|
    ansible.playbook = "postgresql/tasks/main.yml"
 end
end
