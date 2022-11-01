
resource "aws_nat_gateway" "ngw" {
  allocation_id = "${aws_eip.elastic_ip.id}"
  subnet_id = "${aws_subnet.public-1.id}"

  tags = {
    Name = "${var.project-name}-ngw"
  }
}