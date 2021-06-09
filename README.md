# terraform_modules
---

We will first create modules for different services like VPC, Public subnet, Private subnet, RDS, and EC2 Instance. Once these modules are created, We will call these modules from our main configuration file. 
In these modules we define three different files:
1. main.tf : This file define one or more infrastructure objects that the module will manage. 
2. outputs.tf : The file return results to the calling module, which it can then use to populate arguments elsewhere.
3. vars.tf : The file accept values from the calling module.

---
 
These modules are then called from the main.tf present at the root level which further defines the resources that needs to be created and the dependencies. 

Following resources are created using the template defined:
1. A Virtual Private Cloud with CIDR range 10.0.0.0/16.
2. One public subnet with CIDR 10.0.1.0/24. A subnet is created first and to make it public an internet gateway, a route table is created with a route to 0.0.0.0/0. The route table is then associated with the internet gateway.
3. Private subnet with CIDR range 10.0.2.0/24 and 10.0.3.0/24.
4. One EC2 Instance in Public Subnet with Internet Connectivity. The instance is launched in the public subnet and thereby we would be able to access internet from the instance.
5. One EC2 Instance in Private Subnet. The instance is launched in private subnet without access to internet making it a private EC2 instance.
6. One RDS Instance in Private Subnet.

---

Perform the following commands to create the resources:

1. Execute "terraform init" to initialize a working directory containing terraform configuration files. This is the first command that we should run after writing a new terraform configuration or cloning an existing one. 
2. Execute terraform init to initialize a working directory containing terraform configuration files.. Validate the syntax of terraform files in the directory using "terraform validate". It will display an error if any of the files doesn't validate.
3. Validate the syntax of terraform files in the directory using "terraform validate". It will display an error if any of the files doesn't validate.
4. Execute "terraform plan" which creates an execution plan. By default, creating a plan consists of reading the current state of any already-existing remote objects to make sure that the Terraform state is up-to-date. Comparing the current configuration to the prior state and noting any differences.
terraform plan
5. Finally execute "terraform apply" to executes the actions proposed in the terraform plan.
