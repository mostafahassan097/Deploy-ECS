module "network" {
    source = "./network"
    project-vpc_cidr=  var.vpc_cidr
    project-name= var.name
    project-public_subnet_1_cidr= var.public_subnet_1_cidr 
    project-public_subnet_2_cidr=  var.public_subnet_2_cidr
    project-private_subnet_1_cidr=  var.private_subnet_1_cidr
    project-private_subnet_2_cidr=  var.private_subnet_2_cidr
    project-az-1 = var.az-1
    project-az-2 = var.az-2
}