
resource "aws_lb" "project7_alb" {
  name               = "alb"
  internal           = false
  load_balancer_type = "application"
  subnets            = [aws_subnet.zone1_public_sn1.id, aws_subnet.zone2_public_sn1.id, aws_subnet.zone3_public_sn1.id]
}

resource "aws_lb_listener" "project7_listener" {
  load_balancer_arn = aws_lb.project7_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.project7_tg.arn
  }
  }
  
  resource "aws_lb_target_group" "project7_tg" {
  vpc_id     = aws_vpc.vpc.id
  name     = "tg"
  port     = 80
  protocol = "HTTP"

  health_check {
    path = "/health"
  }
      
  }
  
  
