
##############public

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.OM_vpc.id

 # route {
 #   cidr_block = "0.0.0.0/0"
 #   gateway_id = aws_internet_gateway.mygateway.id
 # }
  
}

resource "aws_route" "public_route" {
  route_table_id            = aws_route_table.public.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.mygateway.id


}

resource "aws_route_table_association" "associ_with_pub_sub1" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.public.id
}


resource "aws_route_table_association" "associ_with_pub_sub2" {
  subnet_id      = aws_subnet.public2.id
  route_table_id = aws_route_table.public.id
}

############################ private

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.OM_vpc.id
}


resource "aws_route" "private_route" {
  route_table_id            = aws_route_table.private.id
  destination_cidr_block    = "0.0.0.0/0"
  ### هون رح تطلع على الnat
  gateway_id = aws_nat_gateway.mynat.id
}


resource "aws_route_table_association" "associ_with_pri_sub1" {
  subnet_id      = aws_subnet.private1.id
  route_table_id = aws_route_table.private.id
}


resource "aws_route_table_association" "associ_with_pri_sub2" {
  subnet_id      = aws_subnet.private2.id
  route_table_id = aws_route_table.private.id
}