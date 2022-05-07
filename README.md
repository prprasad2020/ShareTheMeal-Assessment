# Terraform Assessment

### Summary

Terraform codes are used to deploy EC2 and ALB with correct SG configurations and Ansible file is used in the UserData section of EC2 to install Docker, nginx and run the node application. So that when the infrastructure is deployed using Terraform codes, it automatically configure the application using Ansible file. Python script can be used to check the status of the application.

### Top Level Directory Layout
    .
    ├── terraform                  # Terraform Files to create the AWS services for the infrastructure
    │   └── README.md
    ├── ansible                    # Ansible script to bootstrap the applications on EC2
    │   └── README.md 
    ├── script                     # Python script to check the status of the application
    │   └── README.md
    README.md
    
Each folder contains its own README file which has a detailed explaination.
