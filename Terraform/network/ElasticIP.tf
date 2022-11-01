# Elastic IP
resource "aws_eip" "elastic_ip" {
  vpc = true
   tags = {
    Name = "${var.project-name}-elastic_ip"
  }
}