resource "aws_subnet" "public-1" {
  vpc_id     = aws_vpc.lab1_vpc.id
  availability_zone = var.project-az-1
  cidr_block = var.project-public_subnet_1_cidr
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.project-name}-Public-sub-1"
  }
}