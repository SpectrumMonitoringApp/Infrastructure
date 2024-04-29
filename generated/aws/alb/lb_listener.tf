resource "aws_lb_listener" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-992382393502-003A-listener-002F-app-002F-ALBForSpectrumBe-002F-1879840d9b2b17b1-002F-0c0ff3814d7d6593" {
  default_action {
    order = "1"

    redirect {
      host        = "#{host}"
      path        = "/#{path}"
      port        = "443"
      protocol    = "HTTPS"
      query       = "#{query}"
      status_code = "HTTP_301"
    }

    type = "redirect"
  }

  load_balancer_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_tfer--ALBForSpectrumBe_id}"
  port              = "80"
  protocol          = "HTTP"
}

resource "aws_lb_listener" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-992382393502-003A-listener-002F-app-002F-ALBForSpectrumBe-002F-1879840d9b2b17b1-002F-8132405a265c2ca2" {
  certificate_arn = "arn:aws:acm:us-east-1:992382393502:certificate/fc2d0b2e-e815-4660-b6b0-659a86b50d6e"

  default_action {
    order            = "1"
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:992382393502:targetgroup/tg-spectrum-be-prod/3302522d7276bdb7"
    type             = "forward"
  }

  load_balancer_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_tfer--ALBForSpectrumBe_id}"
  port              = "443"
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-TLS13-1-2-2021-06"
}

resource "aws_lb_listener" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-992382393502-003A-listener-002F-app-002F-InfluxDbLoadBalancer-002F-022c6bccdb9320b1-002F-d76bf620da982d62" {
  default_action {
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:992382393502:targetgroup/tg-influx-db-service/d6bbf296af03edd8"
    type             = "forward"
  }

  load_balancer_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_tfer--InfluxDbLoadBalancer_id}"
  port              = "80"
  protocol          = "HTTP"
}
