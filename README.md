# Deploy Simple NodeJs App on ECS That Connects to Rds Using Terraform

## Before you start you should have docker and terraform installed on your machine:

### - Install Docker  ([Link](https://docs.docker.com/engine/install/ubuntu/)).
### - Install Terraform  ([Link](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)).

## Steps To Dockerize application:
* Clone The repo:
```sh
git clone git@github.com:mostafahassan097/Deploy-ECS.git
```
- Make sure you are using s3 bucket and has locktable by editing 
```backend.tf``` file for terraform state follow this  ([Link](https://technology.doximity.com/articles/terraform-s3-backend-best-practices)).

- Run the following commands to deploy the terraform code: 
```sh
cd Deploy-ECS/Terraform
terraform init
terraform apply -var-file=prod.tfvars
```

## After Deploying Terraform Code  :

![App Screenshot](https://github.com/mostafahassan097/Deploy-ECS/blob/main/Screenshots/1.png)
![App Screenshot](https://github.com/mostafahassan097/Deploy-ECS/blob/main/Screenshots/2.png)
![App Screenshot](https://github.com/mostafahassan097/Deploy-ECS/blob/main/Screenshots/3.png)
![App Screenshot](https://github.com/mostafahassan097/Deploy-ECS/blob/main/Screenshots/4.png)
![App Screenshot](https://github.com/mostafahassan097/Deploy-ECS/blob/main/Screenshots/5.png)
![App Screenshot](https://github.com/mostafahassan097/Deploy-ECS/blob/main/Screenshots/6.png)
![App Screenshot](https://github.com/mostafahassan097/Deploy-ECS/blob/main/Screenshots/7.png)
![App Screenshot](https://github.com/mostafahassan097/Deploy-ECS/blob/main/Screenshots/8.png)