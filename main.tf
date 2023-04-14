terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Elastic IP
resource "aws_eip" "static_eip" {
  instance = aws_instance.zone2_vm1_instance.id
  tags = merge(var.default_tags,
    {
      "Name" = "var.prefix-eip"
    }
  )
}

#Webserver homepage

