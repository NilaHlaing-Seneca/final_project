resource "aws_instance" "bastion_instance" {
  ami           = "ami-00c39f71452c08778"
  instance_type = "t2.micro"
  key_name = aws_key_pair.group7_keypair.id
  subnet_id                   = aws_subnet.zone1_public_sn1.id
  vpc_security_group_ids      = [aws_security_group.bastion_sec_group.id]
  associate_public_ip_address = true


  tags = {
    "Name" : "Group7-Dev-Bastion"
  }
}


#Create VM1 in private subnet in us-east-1b
resource "aws_instance" "zone1_vm1_instance" {
  ami           = "ami-00c39f71452c08778"
  instance_type = "t2.micro"
  key_name = aws_key_pair.group7_keypair.id
  subnet_id                   = aws_subnet.zone1_private_sn1.id
  vpc_security_group_ids      = [aws_security_group.ssh_http_sec_group.id]
  associate_public_ip_address = false


  tags = {
    "Name" : "Group7-Webserver-Zone-1"
  }
}

#Create VM1 in Private Subnet in us-east-1c
resource "aws_instance" "zone2_vm1_instance" {
  ami           = "ami-00c39f71452c08778"
  instance_type = "t2.micro"
  key_name = aws_key_pair.group7_keypair.id
  subnet_id                   = aws_subnet.zone2_private_sn1.id
  vpc_security_group_ids      = [aws_security_group.ssh_http_sec_group.id]
  associate_public_ip_address = false


  tags = {
    "Name" : "Group7-Webserver-Zone-2"
  }
}

#Create VM1 in Private Subnet in us-east-1d
resource "aws_instance" "zone3_vm1_instance" {
  ami           = "ami-00c39f71452c08778"
  instance_type = "t2.micro"
  key_name = aws_key_pair.group7_keypair.id
  subnet_id                   = aws_subnet.zone3_private_sn1.id
  vpc_security_group_ids      = [aws_security_group.ssh_http_sec_group.id]
  associate_public_ip_address = false


  tags = {
    "Name" : "Group7-Webserver-Zone-3"
  }
}

