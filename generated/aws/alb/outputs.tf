output "aws_lb_listener_tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-992382393502-003A-listener-002F-app-002F-ALBForSpectrumBe-002F-1879840d9b2b17b1-002F-0c0ff3814d7d6593_id" {
  value = "${aws_lb_listener.tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-992382393502-003A-listener-002F-app-002F-ALBForSpectrumBe-002F-1879840d9b2b17b1-002F-0c0ff3814d7d6593.id}"
}

output "aws_lb_listener_tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-992382393502-003A-listener-002F-app-002F-ALBForSpectrumBe-002F-1879840d9b2b17b1-002F-8132405a265c2ca2_id" {
  value = "${aws_lb_listener.tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-992382393502-003A-listener-002F-app-002F-ALBForSpectrumBe-002F-1879840d9b2b17b1-002F-8132405a265c2ca2.id}"
}

output "aws_lb_listener_tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-992382393502-003A-listener-002F-app-002F-InfluxDbLoadBalancer-002F-022c6bccdb9320b1-002F-d76bf620da982d62_id" {
  value = "${aws_lb_listener.tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-992382393502-003A-listener-002F-app-002F-InfluxDbLoadBalancer-002F-022c6bccdb9320b1-002F-d76bf620da982d62.id}"
}

output "aws_lb_target_group_tfer--ecs-spectr-spectrum-be_id" {
  value = "${aws_lb_target_group.tfer--ecs-spectr-spectrum-be.id}"
}

output "aws_lb_target_group_tfer--tg-express-hello-world_id" {
  value = "${aws_lb_target_group.tfer--tg-express-hello-world.id}"
}

output "aws_lb_target_group_tfer--tg-influx-db-service_id" {
  value = "${aws_lb_target_group.tfer--tg-influx-db-service.id}"
}

output "aws_lb_target_group_tfer--tg-spectrum-be-prod_id" {
  value = "${aws_lb_target_group.tfer--tg-spectrum-be-prod.id}"
}

output "aws_lb_tfer--ALBForSpectrumBe_id" {
  value = "${aws_lb.tfer--ALBForSpectrumBe.id}"
}

output "aws_lb_tfer--InfluxDbLoadBalancer_id" {
  value = "${aws_lb.tfer--InfluxDbLoadBalancer.id}"
}
