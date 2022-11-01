resource "aws_subnet" "private-2" {
  vpc_id     = aws_vpc.lab1_vpc.id
  availability_zone = var.project-az-2
  cidr_block = var.project-private_subnet_2_cidr

  tags = {
    Name = "${var.project-name}-Private-sub-2"
  }
}


