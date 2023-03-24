## Jenkins via Vagrant

Vagrantfile para aprovisionar uma maquina Ubuntu com Java e Jenkins instalados.

# Verificando o funcionamento

> vagrant ssh vm1

> sudo systemctl status jenkins

# Acessando o jenkins

No browser: 192.168.56.11:8080

# Descobrindo a senha

> sudo journalctl -u jenkins
