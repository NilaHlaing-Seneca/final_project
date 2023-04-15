#Bastion Host Public IP
output "bastion-host-public-ip" {
  value = aws_instance.bastion_instance.public_ip
}

# Group7-Webserver-Zone-1_instance IP
output "zone1_vm1_instance_vm_instance-ip" {
  value = aws_instance.zone1_vm1_instance.private_ip
}

# Group7-Webserver-Zone-2_instance IP
output "zone2_vm1_instance_vm_instance-ip" {
  value =  aws_instance.zone2_vm1_instance.private_ip
}

# Group7-Webserver-Zone-3_instance IP
output "zone2_vm3_instance_vm_instance-ip" {
  value =  aws_instance.zone3_vm1_instance.private_ip
}
#Private key
output "private_ip" {
  value = aws_instance.zone2_vm1_instance.private_ip
}

#GRoup 7 Webserver IP address
output "web_eip" {
  value = aws_eip.static_eip.private_ip
}
