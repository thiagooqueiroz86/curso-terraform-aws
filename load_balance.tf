resource "aws_elb" "lb_curso_tf" {
  name               = var.lb_name
  security_groups    = [aws_security_group.terraform_pratica.id]
  availability_zones = var.az_ha_loadbalancer

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 30
  }

  instances                   = aws_instance.web[*].id
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags = {
    Name = "elb_curso_tf"
  }
}