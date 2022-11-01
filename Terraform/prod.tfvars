#Provider and Name
name="prod-env"
region = "eu-west-1"
#========={VPC}===========================
vpc_cidr="10.0.0.0/16"
vpc_name="prod-vpc"
public_subnet_1_cidr="10.0.0.0/24"
public_subnet_2_cidr="10.0.2.0/24"
private_subnet_1_cidr="10.0.1.0/24"
private_subnet_2_cidr="10.0.3.0/24"
#========={AZ}===========================
az-1 = "eu-west-1a"
az-2 = "eu-west-1b"
#=============={RDS INSTANCE}===============
rds-name="test"
rds-username="admin"
rds-engine="mysql"
rds-engine_ver="5.7"
rds-grp-name="default.mysql5.7"
rds-instance-class="db.t2.micro"
rds-port="3306"