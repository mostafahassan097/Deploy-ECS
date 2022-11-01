resource "aws_security_group" "securitygroup-1" {
  name = "Puclic-SG"
  description = "Puclic-SG"
  vpc_id = module.network.vpc_id
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 22
    to_port = 22
    protocol = "tcp"
  }
  ingress {
      cidr_blocks = ["0.0.0.0/0"]
    from_port = 80
    to_port = 80
    protocol = "tcp"
  }
   ingress {
  cidr_blocks = ["0.0.0.0/0"]
    from_port = 443
    to_port = 443
    protocol = "tcp"
  }
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 0
    to_port = 0
    protocol = "-1"
  }
  tags = {
    Name = "${var.name}-Puclic-SG"
  }
}



resource "aws_security_group" "securitygroup-2"{
  name = "Private-SG"
  description = "Private-SG"
  vpc_id = module.network.vpc_id

  ingress {
    cidr_blocks =  ["0.0.0.0/0"]
    from_port = 3000
    to_port = 3000
    protocol = "tcp"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 0
    to_port = 0
    protocol = "-1"
  }
  tags = {
    "Name" = "${var.name}-Private-SG"
  }
}


