#Provider and Name
variable "region" {
  type=string
}
variable "name" {
    type=string

}

#======{VPC}===========================
variable "vpc_name" {
  type=string
}
variable "vpc_cidr" {
  type=string
}
variable "public_subnet_1_cidr" {
  type = string
}
variable "public_subnet_2_cidr" {
  type = string
}
variable "private_subnet_1_cidr" {
  type = string
}

variable "private_subnet_2_cidr" {
  type = string
}
#======{AZ}===========================
variable "az-1" {
  type=string
}
variable "az-2" {
  type=string
}
#============={RDS INSTANCE} ================================
variable "rds-name" {
  type=string
}
variable "rds-username" {
  type=string
}

variable "rds-instance-class" {
  type=string
}

variable "rds-engine" {
  type=string
}


variable "rds-engine_ver" {
  type=string
}

variable "rds-grp-name" {
  type=string
}

variable "rds-port"{
    type=string
}