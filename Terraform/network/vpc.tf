resource "aws_vpc" "lab1_vpc" {
  cidr_block = var.project-vpc_cidr
tags = {
    Name = var.project-name
}
  enable_dns_support=true
  enable_dns_hostnames=true
}