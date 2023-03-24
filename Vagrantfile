Vagrant.configure('2') do |config| # rubocop:disable Style/FrozenStringLiteralComment
  config.vm.box = 'ubuntu/focal64'
  config.vm.define 'vm1' do |vm1|
    vm1.vm.hostname = 'vm1'
    vm1.vm.network 'private_network', ip: '192.168.56.11'
    vm1.vm.network 'forwarded_port', guest: 8080, host: 8080
    vm1.vm.provider 'virtualbox' do |vm|
      vm.memory = 2048
      vm.cpus = 2
      vm.name = 'vm1'
    end
    vm1.vm.provision 'shell', path: './bootstrap.sh'
  end
end
