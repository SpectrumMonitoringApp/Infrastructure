resource "aws_autoscaling_group" "tfer--Infra-ECS-Cluster-InfluxDbCluster-19f2cc03-ECSAutoScalingGroup-MIo1iFgL0QVv" {
  availability_zones        = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d", "us-east-1e", "us-east-1f"]
  capacity_rebalance        = "false"
  default_cooldown          = "300"
  desired_capacity          = "1"
  force_delete              = "false"
  health_check_grace_period = "0"
  health_check_type         = "EC2"

  launch_template {
    id      = "lt-0e202799c168d1653"
    name    = "ECSLaunchTemplate_y6al4EbxIm7K"
    version = "1"
  }

  max_instance_lifetime   = "0"
  max_size                = "1"
  metrics_granularity     = "1Minute"
  min_size                = "1"
  name                    = "Infra-ECS-Cluster-InfluxDbCluster-19f2cc03-ECSAutoScalingGroup-MIo1iFgL0QVv"
  protect_from_scale_in   = "false"
  service_linked_role_arn = "arn:aws:iam::992382393502:role/aws-service-role/autoscaling.amazonaws.com/AWSServiceRoleForAutoScaling"

  tag {
    key                 = "AmazonECSManaged"
    propagate_at_launch = "true"
  }

  tag {
    key                 = "Name"
    propagate_at_launch = "true"
    value               = "ECS Instance - InfluxDbCluster"
  }

  vpc_zone_identifier       = ["subnet-01d0e83e01697d75b", "subnet-033230007eb3f7de7", "subnet-048219b0a008b3102", "subnet-0a1997b5e2eb268e6", "subnet-0dd5157430ea36c4d", "subnet-0fdf2ac630ec98781"]
  wait_for_capacity_timeout = "10m"
}

resource "aws_autoscaling_group" "tfer--Infra-ECS-Cluster-PythonScheduler-5d701c88-ECSAutoScalingGroup-iUof2D0EHMrD" {
  availability_zones        = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d", "us-east-1e", "us-east-1f"]
  capacity_rebalance        = "false"
  default_cooldown          = "300"
  desired_capacity          = "1"
  force_delete              = "false"
  health_check_grace_period = "0"
  health_check_type         = "EC2"

  launch_template {
    id      = "lt-027e91dccdea239a8"
    name    = "ECSLaunchTemplate_WSh7iX983Ddm"
    version = "1"
  }

  max_instance_lifetime   = "0"
  max_size                = "1"
  metrics_granularity     = "1Minute"
  min_size                = "1"
  name                    = "Infra-ECS-Cluster-PythonScheduler-5d701c88-ECSAutoScalingGroup-iUof2D0EHMrD"
  protect_from_scale_in   = "false"
  service_linked_role_arn = "arn:aws:iam::992382393502:role/aws-service-role/autoscaling.amazonaws.com/AWSServiceRoleForAutoScaling"

  tag {
    key                 = "AmazonECSManaged"
    propagate_at_launch = "true"
  }

  tag {
    key                 = "Name"
    propagate_at_launch = "true"
    value               = "ECS Instance - PythonScheduler"
  }

  vpc_zone_identifier       = ["subnet-01d0e83e01697d75b", "subnet-033230007eb3f7de7", "subnet-048219b0a008b3102", "subnet-0a1997b5e2eb268e6", "subnet-0dd5157430ea36c4d", "subnet-0fdf2ac630ec98781"]
  wait_for_capacity_timeout = "10m"
}

resource "aws_autoscaling_group" "tfer--Infra-ECS-Cluster-SpectrumGoBrokers-5c5a0f32-ECSAutoScalingGroup-k9Lwhf4EMHAn" {
  availability_zones        = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d", "us-east-1e", "us-east-1f"]
  capacity_rebalance        = "false"
  default_cooldown          = "300"
  desired_capacity          = "1"
  force_delete              = "false"
  health_check_grace_period = "0"
  health_check_type         = "EC2"

  launch_template {
    id      = "lt-0fb56978166beb8f8"
    name    = "ECSLaunchTemplate_B2kFRs48SFtR"
    version = "1"
  }

  max_instance_lifetime   = "0"
  max_size                = "1"
  metrics_granularity     = "1Minute"
  min_size                = "1"
  name                    = "Infra-ECS-Cluster-SpectrumGoBrokers-5c5a0f32-ECSAutoScalingGroup-k9Lwhf4EMHAn"
  protect_from_scale_in   = "false"
  service_linked_role_arn = "arn:aws:iam::992382393502:role/aws-service-role/autoscaling.amazonaws.com/AWSServiceRoleForAutoScaling"

  tag {
    key                 = "AmazonECSManaged"
    propagate_at_launch = "true"
  }

  tag {
    key                 = "Name"
    propagate_at_launch = "true"
    value               = "ECS Instance - SpectrumGoBrokers"
  }

  vpc_zone_identifier       = ["subnet-01d0e83e01697d75b", "subnet-033230007eb3f7de7", "subnet-048219b0a008b3102", "subnet-0a1997b5e2eb268e6", "subnet-0dd5157430ea36c4d", "subnet-0fdf2ac630ec98781"]
  wait_for_capacity_timeout = "10m"
}

resource "aws_autoscaling_group" "tfer--Infra-ECS-Cluster-SpectrumGoWorkers-1c37aa2c-ECSAutoScalingGroup-cZSV7wxTRj4q" {
  availability_zones        = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d", "us-east-1e", "us-east-1f"]
  capacity_rebalance        = "false"
  default_cooldown          = "300"
  desired_capacity          = "1"
  force_delete              = "false"
  health_check_grace_period = "0"
  health_check_type         = "EC2"

  launch_template {
    id      = "lt-09c1c39b262b5f1ec"
    name    = "ECSLaunchTemplate_6jlRk2SfJcQf"
    version = "1"
  }

  max_instance_lifetime   = "0"
  max_size                = "2"
  metrics_granularity     = "1Minute"
  min_size                = "1"
  name                    = "Infra-ECS-Cluster-SpectrumGoWorkers-1c37aa2c-ECSAutoScalingGroup-cZSV7wxTRj4q"
  protect_from_scale_in   = "false"
  service_linked_role_arn = "arn:aws:iam::992382393502:role/aws-service-role/autoscaling.amazonaws.com/AWSServiceRoleForAutoScaling"

  tag {
    key                 = "AmazonECSManaged"
    propagate_at_launch = "true"
  }

  tag {
    key                 = "Name"
    propagate_at_launch = "true"
    value               = "ECS Instance - SpectrumGoWorkers"
  }

  vpc_zone_identifier       = ["subnet-01d0e83e01697d75b", "subnet-033230007eb3f7de7", "subnet-048219b0a008b3102", "subnet-0a1997b5e2eb268e6", "subnet-0dd5157430ea36c4d", "subnet-0fdf2ac630ec98781"]
  wait_for_capacity_timeout = "10m"
}
