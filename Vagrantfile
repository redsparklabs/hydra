Vagrant.configure(2) do |config|

  config.vm.box       = 'precise64'
  config.vm.box_url   = 'http://files.vagrantup.com/precise64.box'
  config.vm.host_name = 'hydra-dev-box'

  config.vm.network "forwarded_port", guest: 3000, host:3000
  
  config.vm.provider :virtualbox do |vb|
    #vb.gui = true
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "off"]
    vb.customize ["modifyvm", :id, "--memory", 1024]  
  end
  config.vm.provision :puppet,
    :manifests_path => 'puppet/manifests',
    :module_path    => 'puppet/modules',
    :manifest_file  => 'default.pp'
end