#!/bin/bash
sudo amazon-linux-extras install ansible2 -y
cd /tmp
wget https://raw.githubusercontent.com/prprasad2020/ShareTheMeal-Assessment/main/ansible/bootstrap-ansible.yml
sudo ansible-playbook /tmp/bootstrap-ansible.yml