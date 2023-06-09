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

# Create  Subnet Public_SN1 in us-east-1c
resource "aws_subnet" "zone2_public_sn1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.2.2.0/24"
  map_public_ip_on_launch = "true" #it makes this a public subnet
  availability_zone       = "us-east-1c"
  tags = {
    Name = "Zone-2 Public_SN1"
  }
}

# Create  Subnet Private_SN1 in us-east-1c
resource "aws_subnet" "zone2_private_sn1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.2.4.0/24"
  map_public_ip_on_launch = "true" #it makes this a public subnet
  availability_zone       = "us-east-1c"
  tags = {
    Name = "Zone-2 Private_SN1"
  }
}

# Create  Subnet Public_SN1 in us-east-1d
resource "aws_subnet" "zone3_public_sn1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.2.5.0/24"
  map_public_ip_on_launch = "true" #it makes this a public subnet
  availability_zone       = "us-east-1d"
  tags = {
    Name = "Zone-3 Public_SN1"
  }
}

# Create  Subnet Private_SN1 in us-east-1d
resource "aws_subnet" "zone3_private_sn1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.2.7.0/24"
  map_public_ip_on_launch = "true" #it makes this a public subnet
  availability_zone       = "us-east-1d"
  tags = {
    Name = "Zone-3 Private_SN1"
  }
}

# -------------------- End -------------------------
