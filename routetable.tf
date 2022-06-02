resource "aws_route_table" "vpc_routetable_1" {
  vpc_id = data.aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_vpc_main.id
  }

  tags = {
    Name = "af-vpc-rt-1"
  }
}

resource "aws_route_table_association" "vpc_routetable_1_attach" {
  subnet_id      = aws_subnet.subnet_2.id
  route_table_id = aws_route_table.vpc_routetable_1.id
}