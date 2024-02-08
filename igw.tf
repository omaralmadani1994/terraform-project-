resource "aws_internet_gateway" "mygateway" {
  vpc_id = aws_vpc.OM_vpc.id


}