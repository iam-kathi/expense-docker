#!/bin/bash

dnf -y install dnf-plugins-core
dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
systemctl enable --now docker
usermod -aG docker ec2-user

# this code is kept in Shell-scripting so that no need of running these commands run one by one everytime in server
# so we will copy this code and In our server, we will switch to root user and create "install-docker.sh" file (vim install-docker.sh )
# paste the code and run the file "sh install-docker.sh'
# docker is installed in the server and started, and user group also changed by this code