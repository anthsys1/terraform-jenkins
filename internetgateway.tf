resource "aws_internet_gateway" "igw_vpc_main" {
  vpc_id = data.aws_vpc.main_vpc.id

  tags = {
    Name = "igw-main-vpc"
  }
}