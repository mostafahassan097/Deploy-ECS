resource "aws_subnet" "private-1" {
  vpc_id     = aws_vpc.lab1_vpc.id
  availability_zone = var.project-az-1
  cidr_block = var.project-private_subnet_1_cidr

  tags = {
    Name = "${var.project-name}-Private-sub-1"
  }
}


