#!/bin/bash

echo '[TASK 1] Atualiza o sistema operacional e instala o Java 17'
sudo apt-get update >/dev/null 2>&1
sudo apt-get install -y openjdk-17-jdk  >/dev/null 2>&1

echo '[TASK 2] Baixa chave PGP do Jenkins'
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc >/dev/null 2>&1

echo '[TASK 3] Adiciona repos de pacotes no sistema'
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list >/dev/null 2>&1

echo '[TASK 4] Atualiza o sistema operacional e instala o Jenkins'
sudo apt-get update >/dev/null
sudo apt-get install -y jenkins  >/dev/null 2>&1
