Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 8192
    v.gui = true
  end
  config.vm.box = ARGV[0]
  config.vm.hostname = "myprecise.box"
  config.vm.network "forwarded_port", guest: 22, host: 20022
  config.vm.provision "shell" do |s|
    s.path = "provisioner.sh"
    s.args   = [ARGV[1]]
  end
end
