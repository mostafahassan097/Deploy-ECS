resource "random_password" "password" {
  length           = 16
  special          = false
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "aws_db_subnet_group" "mydb-sub-grp" {
  name       = "mydb-sub-grp"
  subnet_ids = [module.network.pri_sub_1, module.network.pri_sub_2]

  tags = {
    Name = "My DB subnet group"
  }
}

resource "aws_db_instance" "my_rds" {
  allocated_storage      = 8
  identifier             = "mydb"
  storage_type           = "gp2"
  skip_final_snapshot    = true
  engine                 = var.rds-engine
  engine_version         = var.rds-engine_ver
  instance_class         = var.rds-instance-class
  db_name                = var.rds-name
  username               = var.rds-username
  password               = random_password.password.result
  parameter_group_name   = var.rds-grp-name
  availability_zone      = var.az-1
  db_subnet_group_name   = aws_db_subnet_group.mydb-sub-grp.name
  vpc_security_group_ids = [aws_security_group.securitygroup-1.id, aws_security_group.securitygroup-2.id]
  port                   = var.rds-port
}
