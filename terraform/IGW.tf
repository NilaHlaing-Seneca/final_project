# Attach an internet gateway to the VPC
resource "aws_internet_gateway" "project_igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "Group7-Project-IGW"
  }
}

# Create a route table for a zone1 public subnet
resource "aws_route_table" "zone1_public" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.project_igw.id
  }

  tags = {
    Name = "Public-Route-Table"
  }
}


#Associate Route Table for Zone 1 Public
resource "aws_route_table_association" "zone1_public" {
  subnet_id      = aws_subnet.zone1_public_sn1.id
  route_table_id = aws_route_table.zone1_public.id
}