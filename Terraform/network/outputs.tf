output "vpc_id" {
  value = aws_vpc.lab1_vpc.id
}

output "vpc_cidr" {
  value = aws_vpc.lab1_vpc.cidr_block
}

output "pub_sub_1" {
  value = aws_subnet.public-1.id
}

output "pub_sub_2" {
  value = aws_subnet.public-2.id
}

output "pri_sub_1" {
  value =  aws_subnet.private-1.id
}
output "pri_sub_2" {
  value = aws_subnet.private-2.id
}

