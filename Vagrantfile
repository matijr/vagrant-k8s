Vagrant.configure("2") do |config|
  config.vm.define "master" do |master|
    master.vm.box = "centos/7"
    master.vm.network "private_network", type: "dhcp"
    master.vm.provision "shell", path: "scripts/master.sh"
    master.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 1
    end
  end

  config.vm.define "worker" do |worker|
    worker.vm.box = "centos/7"
    worker.vm.network "private_network", type: "dhcp"
    worker.vm.provision "shell", path: "scripts/workers.sh"
    worker.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 1
    end
  end
end
