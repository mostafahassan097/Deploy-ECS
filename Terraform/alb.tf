resource "aws_lb" "external-elb" {
  name               = "External-LB"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.securitygroup-1.id]
  subnets            = [module.network.pub_sub_1, module.network.pub_sub_2]
}

resource "aws_lb_target_group" "alb-tg" {
  name     = "ALB-TG"
  port     = 3000
    target_type = "ip"

  protocol = "HTTP"
  vpc_id   = module.network.vpc_id
}



resource "aws_lb_listener" "external-elb" {
  load_balancer_arn = aws_lb.external-elb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.alb-tg.arn
  }
}

