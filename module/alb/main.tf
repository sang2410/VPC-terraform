resource "aws_lb" "alb" {
  name               = "app-for-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.sg_id]
  subnets            = var.subnets

  
}
#Listener
resource "aws_lb_listener" "listener" {
  load_balancer_arn = aws_lb.alb.arn
  port              = "80"
  protocol          = "HTTP"
#   ssl_policy        = "ELBSecurityPolicy-2016-08"
#   certificate_arn   = "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg.arn
  }
}
#Target Group
resource "aws_lb_target_group" "tg" {
  name     = "tg"
  protocol = "HTTP"
  port = 80
  vpc_id   = var.vpc_id
  target_type = "instance"
}
#target group attachment
resource "aws_lb_target_group_attachment" "tga" {
    count = length(var.instance_id)
  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = var.instance_id[count.index]
  port             = 80
}
