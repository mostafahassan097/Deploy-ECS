#======{VPC}===========================
variable "project-name" {
  type=string
}
variable "project-vpc_cidr" {
  type=string
}
variable "project-public_subnet_1_cidr" {
  type = string
}
variable "project-public_subnet_2_cidr" {
  type = string
}
variable "project-private_subnet_1_cidr" {
  type = string
}

variable "project-private_subnet_2_cidr" {
  type = string
}
#======{AZ}===========================
variable "project-az-1" {
  type=string
}
variable "project-az-2" {
  type=string
}
