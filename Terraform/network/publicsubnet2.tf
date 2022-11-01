resource "aws_subnet" "public-2" {
  vpc_id     = aws_vpc.lab1_vpc.id
  availability_zone = var.project-az-2
  cidr_block = var.project-public_subnet_2_cidr
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.project-name}-Public-sub-2"
  }
}