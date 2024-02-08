resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.OM_vpc.id
  cidr_block = "10.0.1.0/24"
  map_customer_owned_ip_on_launch = "true"
}

resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.OM_vpc.id
  cidr_block = "10.0.2.0/24"
  map_customer_owned_ip_on_launch = "true"
}





resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.OM_vpc.id
  cidr_block = "10.0.3.0/24"
}


resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.OM_vpc.id
  cidr_block = "10.0.4.0/24"
}