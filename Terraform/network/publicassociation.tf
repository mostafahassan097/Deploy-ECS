resource "aws_route_table_association" "publicassco1"{
    subnet_id = aws_subnet.public-1.id
    route_table_id = aws_route_table.publicRT.id
}

resource "aws_route_table_association" "publicassco2"{
    subnet_id = aws_subnet.public-2.id
    route_table_id = aws_route_table.publicRT.id
}