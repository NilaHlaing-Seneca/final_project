## Final Project: Two-Tier web application automation with Terraform

### Group 7

#### Group Members 

1. Arunadevi Krishnan
2. Nila Hlaing
3. Niluxsi Puvanenthiran
4.
Sample
 
 











#### The application will be deployed on an Auto-Scaling Group (ASG) of EC2 instances with a minimum of 1 and a maximum of 4 instances across 3 availability zones.

#### An auto scaling policy to scale out if the load is above 10% of the CPU and scale in if the load is below 5% of the CPU is deployed and alerts were set to notify




```
#SSH to Bastion
chmod 400 <key-pair>
ssh -i <key-pair> <bastion-host-public-ip>


#Copy Keypair
nano <private_keypair>

# copy key from group7_keypair
#Paste it in private_keypair file

chmod 400 <private_keypair>



#Group7-Webserver-Zone-1
ssh -i private_keypair <zone1_vm1_instance_vm_instance-ip>

#Group7-Webserver-Zone-2
ssh -i private_keypair <zone2_vm1_instance_vm_instance-ip>


#Group7-Webserver-Zone-3
ssh -i private_keypair <zone3_vm1_instance_vm_instance-ip>
```
