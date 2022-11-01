resource "aws_route_table" "publicRT" {
  vpc_id = aws_vpc.lab1_vpc.id
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${ aws_internet_gateway.igw.id}"
  }

  tags = {
    Name = "${var.project-name}-publicRT"
  }
}