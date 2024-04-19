resource "aws_cloudwatch_event_rule" "tfer--ecs-managed-capacity-provider-rule" {
  description    = "An Amazon ECS managed rule that supports capacity provider"
  event_bus_name = "default"
  event_pattern  = "{\"detail\":{\"LifecycleHookName\":[\"ecs-managed-draining-termination-hook\",{\"exists\":false}]},\"detail-type\":[\"EC2 Spot Instance Interruption Warning\",\"EC2 Instance-terminate Lifecycle Action\",\"EC2 Instance Launch Successful\"],\"source\":[\"aws.ec2\",\"aws.autoscaling\"]}"
  is_enabled     = "true"
  name           = "ecs-managed-capacity-provider-rule"
}
