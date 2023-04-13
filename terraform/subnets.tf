# -------------------- Added by Nila -------------------------

# Create  Subnet Public_SN1 in us-east-1b
resource "aws_subnet" "zone1_public_sn1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.2.1.0/24"
  map_public_ip_on_launch = "true" #it makes this a public subnet
  availability_zone       = "us-east-1b"
  tags = {
    Name = "Zone-1 Public_SN1"
  }
}

# Create  Subnet Private_SN1 in us-east-1b
resource "aws_subnet" "zone1_private_sn1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.2.3.0/24"
  map_public_ip_on_launch = "true" #it makes this a public subnet
  availability_zone       = "us-east-1b"
  tags = {
    Name = "Zone-1 Private_SN1"
  }
}

# -------------------- End -------------------------
