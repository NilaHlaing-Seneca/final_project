# Create an AWS Launch Configuration
resource "aws_launch_configuration" "project7_lc" {
  name_prefix   = "project7-lc"
  image_id      = "ami-00c39f71452c08778"
  instance_type = "t3.medium"

  lifecycle {
    create_before_destroy = true
  }
}

# Create an AWS Autoscaling Group
resource "aws_autoscaling_group" "project7_prod_asg" {
  name                      = "project7-prod-asg"
  max_size                  = 4
  min_size                  = 1
  desired_capacity          = 3
  vpc_zone_identifier       = [aws_subnet.zone1_private_sn1.id, aws_subnet.zone2_private_sn1.id, aws_subnet.zone3_private_sn1.id ]
  launch_configuration      = aws_launch_configuration.project7_lc.name
  health_check_type         = "EC2"
  health_check_grace_period = 300

 
}
