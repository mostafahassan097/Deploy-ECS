resource "aws_route_table_association" "privateassco"{
    subnet_id = aws_subnet.private-1.id
    route_table_id = aws_route_table.privateRT.id
}

resource "aws_route_table_association" "privateassco2"{
    subnet_id = aws_subnet.private-2.id
    route_table_id = aws_route_table.privateRT.id
}