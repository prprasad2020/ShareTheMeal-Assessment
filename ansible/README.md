### Description

This Ansible file is configured in UserData section, so that it runs automatically when the EC2 is spinned up. Installing the Ansible service and downloading this file into the EC2 is achieved thru UserData itself. If the Terraform codes are used to deploy the AWS services then there is no manual execution required. This file is used to complete following steps,
- Install git and other pre requisits
- Install and start Docker service
- Install nvm and npm
- Clone the simple-node-app repository
- Install npm modules and start the application
- Configure nginx and build the docker image
- Run nginx docker container

#### Manual Execution

Ansible should be installed on the server before execution. This script is not configured for remote execution, so that this script is configuring the services within the local server.

##### 1. Install Ansible
 * Amazon Linux2: `sudo amazon-linux-extras install ansible2 -y`
 * CentOS: `sudo yum install ansible`
 * Ubuntu: `sudo apt install ansible`

More info: https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html

##### 2. Copy the Ansible file into the server and execute it

`sudo ansible-playbook bootstrap-ansible.yml`
