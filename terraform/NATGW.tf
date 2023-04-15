#Create a AWS route table for the gateway_id
resource "aws_route_table" "nat_gateway" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.project_igw.id
  }

  tags = {
    Name = "nat_gateway_route_table"
  }
}

#Create a AWS route table association for the gateway_id

resource "aws_route_table_association" "nat_gateway" {
  subnet_id      = aws_subnet.zone2_public_sn1.id
  route_table_id = aws_route_table.nat_gateway.id
}

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat_gateway.id
  subnet_id     = aws_subnet.zone2_public_sn1.id
}

#Create a AWS route table for the private subnet
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block     = "10.2.4.0/24"
    nat_gateway_id = aws_nat_gateway.nat_gateway.id
  }

  tags = {
    Name = "private_route_table"
  }
}

#Create a AWS route table association for the private subnet
resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.zone2_private_sn1.id
  route_table_id = aws_route_table.nat_gateway.id
}
