resource "aws_autoscaling_policy" "project7_cpu_policy" {
  name                   = "project7-cpu-policy"
  policy_type            = "TargetTrackingScaling"
  autoscaling_group_name = aws_autoscaling_group.project7_prod_asg.name

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 10.0
  }

  #tags = {
   # Name = "project7-cpu-policy"
 # }
}

resource "aws_cloudwatch_metric_alarm" "project7_cpu_alarm_high" {
  alarm_name          = "project7-cpu-alarm-high"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "60"
  statistic           = "Average"
  threshold           = "10"
  alarm_description   = "This metric monitors CPU utilization"
  alarm_actions       = [aws_autoscaling_policy.project7_cpu_policy.arn]
  dimensions = {
    AutoScalingGroupName = aws_autoscaling_group.project7_prod_asg.name
  }

  tags = {
    Name = "project7-cpu-alarm-high"
  }
}

resource "aws_cloudwatch_metric_alarm" "project7_cpu_alarm_low" {
  alarm_name          = "project7-cpu-alarm-low"
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "60"
  statistic           = "Average"
  threshold           = "5"
  alarm_description   = "This metric monitors CPU utilization"
  alarm_actions       = [aws_autoscaling_policy.project7_cpu_policy.arn]
  dimensions = {
    AutoScalingGroupName = aws_autoscaling_group.project7_prod_asg.name
  }

  tags = {
    Name = "project7-cpu-alarm-low"
  }
}
