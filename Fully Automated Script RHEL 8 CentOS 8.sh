#!/bin/bash
echo " Git Installation Starts . "
sleep 2s
yum update -y
    yum install git -y
    git --version
    git config --global user.name "pranavph"
    git config --global user.email "hondraopranav035@gmail.com"
echo " Jenkins Installation Complete !! "
sleep 2s
echo " Docker Installation Starts . "
sleep 2s
yum install yum-utils -y
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install docker-ce docker-ce-cli containerd.io -y
sudo usermod -a -G docker ec2-user
sudo usermod -a -G docker jenkins
sudo systemctl enable --now docker
echo " Docker Installation Complete !! "
sleep 2s
echo " Jenkins Installation Starts . "
sleep 2s
sudo wget -O /etc/yum.repos.d/jenkins.repo     https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade -y
sudo yum install epel-release java-11-openjdk-devel -y
sudo yum install jenkins -y
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl enable --now jenkins
sudo sytemctl status jenkins
echo " Jenkins Installation Complete !! "
sleep 2s
echo " Restarting "
sleep 2s
init 6