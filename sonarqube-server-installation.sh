#!/bin/bash

##Author: Bowo
##Date: October 2022
##Desc: Sonarqube Server Installation

##Java Installation

yum update -y

yum install java-11-openjdk-devel -y

yum install java-11-openjdk -y


##Download Latest SonarQube versions on your server

cd /opt

yum install wget -y

wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

##Extract Packages

unzip /opt/sonarqube-9.3.0.51899.zip

##Change Ownership to the user and Switch to Linux binaries directory to start service

chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899

cd /opt/sonarqube-x.x/bin/linux-x86-64

 ./sonar.sh start
