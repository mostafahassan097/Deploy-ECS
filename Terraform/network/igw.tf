resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.lab1_vpc.id

  tags = {
    Name = "${var.project-name}-igw-lab1"
  }
}