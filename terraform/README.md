### Description

These Terraform files are used to spin up the AWS services for the infrastructure. Since this is a small project and limited reusablity, I did not configure the resources as modules. Instead all those are configured as resources in separate files for understanding. State file of this is kept locally and I did not pushed it to this repository as well. Below resources are created when these terraform files are applied.
- EC2
- Security Groups
- Application LoadBalancer
- Target Group

Application is publically accessible via Loadbalancer DNS and users can SSH to the EC2 also(_key file is kept private_). But security groups are limiting the access to the Loadbalancer DNS and to the SSH port(_limited this access because of the unwanted traffic from unknown users/hackers_). Currently only my local IP address is allowed. I'll share the credentails to my AWS account so that anyone who wants access can change the inbound rules of the Security group and access the application/server.

#### Manual Execution

##### 1. Install Terraform
Detailed steps by steps instructions can be found here: https://learn.hashicorp.com/tutorials/terraform/install-cli

##### 2. Configure AWS Credentials
Before executing the Terraform files to create the AWS services, there should be a way to authenticate to the AWS account. There are several methods to configure authentication, I used the below method,

* Created an IAM user with an access key and a secret key from AWS console
* Exported the credentials as environment variables.

```
export AWS_ACCESS_KEY_ID="<access-key>"
export AWS_SECRET_ACCESS_KEY="<secret-key>"
```
##### 3. Execute the Terraform files

Initialize the Terraform directory, it downloads and installs the providers defined in the configuration.

`terraform init`

Terraform plan creates an execution plan, which lets you preview the changes.

`terraform plan -var-file=variables/sharethemeal-assesment.tfvars`

Terraform apply creates the execution plan(_same as terraform plan_) and then prompt you to approve that plan, before taking the indicated actions. After approving it creates the listed resources.

`terraform apply -var-file=variables/sharethemeal-assesment.tfvars`

![Terraform Apply](https://github.com/prprasad2020/prprasad2020/blob/9bcf39cbd5d56f82d3cb04c15e5c78c4330ec373/public-images/terraform-stm.png?raw=true)

To delete the infrastructure.

`terraform destroy -var-file=variables/sharethemeal-assesment.tfvars`
