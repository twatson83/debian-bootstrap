#!/bin/bash

echo "Installing ansible"
apt-get update
apt-get install software-properties-common -y
apt-add-repository ppa:ansible/ansible -y
apt-get update
apt-get install ansible -y

echo "Installing git"
apt-get install git -y
git config --global user.name twatson83
git config --global user.email tswatson123@gmail.com

echo "Pulling playbook from Github"
git clone https://github.com/twatson83/debian-bootstrap.git
cd debian-bootstrap

echo "Run playbook"
ANSIBLE_NOCOWS=1 ansible-playbook playbook.yml
