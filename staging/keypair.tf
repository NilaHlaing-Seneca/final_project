#Resource to create a SSH private key
resource "aws_key_pair" "group7_keypair" {
  key_name   = "group7"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDSCc9RZOhOjEeWqbsdCJUGtbHThZ1hMNUkQZRB1xqG2FZGWjePWRtONGYNQ5YCDYdrdyl23atdP5waLx7Tr9ZevHLFpUikGLA1NZOGlQkCTDXJmZ9SDjrgMSMMWjAsBXaAzmE/qrwA9xthzzEfPcKTrmxbeZ+rZ2dR2bMTz+M9bYRV4d08cBlLxxNO69lPRcN0wYnVv7HY5/JtQHmVmRQnK6/rsle89GQuPX2zjTTRX8ksl9FgQlUyq1c8NXoJtc7R0wT7I2j5UD+pF3iDaemOW66OvA+/mRNWFjpdM4aEeWyJq7zoe1+gmVP/heEYpKNj0g5lSSVRjnqUBvaE/6fz ec2-user@ip-172-31-21-24.ec2.internal"
  }