resource "aws_route_table" "privateRT" {
  vpc_id = aws_vpc.lab1_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.ngw.id}"
  }

  tags = {
    Name = "${var.project-name}-privateRT"
  }
}