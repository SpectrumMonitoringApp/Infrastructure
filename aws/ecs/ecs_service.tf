resource "aws_ecs_service" "tfer--InfluxDbCluster_influx-db-service" {
  cluster = "InfluxDbCluster"

  deployment_circuit_breaker {
    enable   = "true"
    rollback = "true"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "1"
  enable_ecs_managed_tags            = "true"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "0"
  launch_type                        = "EC2"

  load_balancer {
    container_name   = "influx-db"
    container_port   = "8086"
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:992382393502:targetgroup/tg-influx-db-service/d6bbf296af03edd8"
  }

  name = "influx-db-service"

  network_configuration {
    assign_public_ip = "false"
    security_groups  = ["sg-0acf6737ca71ee215"]
    subnets          = ["subnet-01d0e83e01697d75b", "subnet-033230007eb3f7de7", "subnet-048219b0a008b3102", "subnet-0a1997b5e2eb268e6", "subnet-0dd5157430ea36c4d", "subnet-0fdf2ac630ec98781"]
  }

  ordered_placement_strategy {
    field = "attribute:ecs.availability-zone"
    type  = "spread"
  }

  ordered_placement_strategy {
    field = "instanceId"
    type  = "spread"
  }

  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:us-east-1:992382393502:task-definition/influx-db:1"
}

resource "aws_ecs_service" "tfer--PythonScheduler_python-scheduler" {
  cluster = "PythonScheduler"

  deployment_circuit_breaker {
    enable   = "true"
    rollback = "true"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "1"
  enable_ecs_managed_tags            = "true"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "0"
  launch_type                        = "EC2"
  name                               = "python-scheduler"

  ordered_placement_strategy {
    field = "attribute:ecs.availability-zone"
    type  = "spread"
  }

  ordered_placement_strategy {
    field = "instanceId"
    type  = "spread"
  }

  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:us-east-1:992382393502:task-definition/python-scheduler:4"
}

resource "aws_ecs_service" "tfer--SpectrumGoBrokers_spectrum-go-broker-service" {
  cluster = "SpectrumGoBrokers"

  deployment_circuit_breaker {
    enable   = "true"
    rollback = "true"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "0"
  enable_ecs_managed_tags            = "true"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "0"
  launch_type                        = "EC2"
  name                               = "spectrum-go-broker-service"

  ordered_placement_strategy {
    field = "attribute:ecs.availability-zone"
    type  = "spread"
  }

  ordered_placement_strategy {
    field = "instanceId"
    type  = "spread"
  }

  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:us-east-1:992382393502:task-definition/spectrum-go-broker:1"
}

resource "aws_ecs_service" "tfer--SpectrumGoWorkers_spectrum-go-worker-service-v2" {
  cluster = "SpectrumGoWorkers"

  deployment_circuit_breaker {
    enable   = "true"
    rollback = "true"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "0"
  enable_ecs_managed_tags            = "true"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "0"
  launch_type                        = "EC2"
  name                               = "spectrum-go-worker-service-v2"

  ordered_placement_strategy {
    field = "attribute:ecs.availability-zone"
    type  = "spread"
  }

  ordered_placement_strategy {
    field = "instanceId"
    type  = "spread"
  }

  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:us-east-1:992382393502:task-definition/spectrum-go-worker:1"
}

resource "aws_ecs_service" "tfer--express-hello-world_spectrum-be-prod-v3" {
  cluster = "express-hello-world"

  deployment_circuit_breaker {
    enable   = "true"
    rollback = "true"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "1"
  enable_ecs_managed_tags            = "true"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "0"
  launch_type                        = "FARGATE"

  load_balancer {
    container_name   = "spectrum-be-prod"
    container_port   = "8000"
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:992382393502:targetgroup/tg-spectrum-be-prod/3302522d7276bdb7"
  }

  name = "spectrum-be-prod-v3"

  network_configuration {
    assign_public_ip = "true"
    security_groups  = ["sg-026b44930c5296578"]
    subnets          = ["subnet-01d0e83e01697d75b", "subnet-033230007eb3f7de7", "subnet-048219b0a008b3102", "subnet-0a1997b5e2eb268e6", "subnet-0dd5157430ea36c4d", "subnet-0fdf2ac630ec98781"]
  }

  platform_version    = "LATEST"
  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:us-east-1:992382393502:task-definition/spectrum-be-prod:2"
}
