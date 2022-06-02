resource "aws_nat_gateway" "nat_gateway_1" {
  allocation_id = aws_eip.ngw_eip.id
  subnet_id     = aws_subnet.subnet_2.id

  tags = {
    Name = "af-ngw-subnet-2"
  }

  depends_on = [aws_internet_gateway.igw_vpc_main]
}

resource "aws_eip" "ngw_eip" {
  vpc                       = true
}