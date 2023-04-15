#!/bin/bash
yum -y update
yum -y install httpd
echo "<h1>Welcome to Group 7 Final Project Window</h1><br> Built by Terraform!"  >  /var/www/html/index.html
sudo systemctl start httpd
sudo systemctl enable httpd
