# Target group for load balancer
resource "aws_lb_target_group" "strapi" {
  name        = "strapi-tg"
  port        	= 1337
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = data.aws_vpc.default.id

  health_check {
    path                = "/"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
    matcher             = "200-399"
  }
}

# Application load balancer
resource "aws_lb" "strapi" {
  name               	= "docker-strapi-alb"
  load_balancer_type = "application"
  internal           	= false
  security_groups    	= [aws_security_group.strapi_sg.id]
  subnets            	= data.aws_subnets.default.ids
}

# Load balancer listener
resource "aws_lb_listener" "http" {
  load_balancer_arn 	= aws_lb.strapi.arn
  port              	= 80
  protocol          	= "HTTP"

  default_action {
    type             	= "forward"
    target_group_arn 	= aws_lb_target_group.strapi.arn
  }
}

