resource "aws_ecs_cluster" "tfer--PythonScheduler" {
  capacity_providers = ["Infra-ECS-Cluster-PythonScheduler-5d701c88-EC2CapacityProvider-Fd5qFPVIJAEx"]

  configuration {
    execute_command_configuration {
      logging = "DEFAULT"
    }
  }

  default_capacity_provider_strategy {
    base              = "0"
    capacity_provider = "Infra-ECS-Cluster-PythonScheduler-5d701c88-EC2CapacityProvider-Fd5qFPVIJAEx"
    weight            = "1"
  }

  name = "PythonScheduler"

  setting {
    name  = "containerInsights"
    value = "disabled"
  }
}

resource "aws_ecs_cluster" "tfer--PythonSchedulerFargate" {
  capacity_providers = ["FARGATE", "FARGATE_SPOT"]

  configuration {
    execute_command_configuration {
      logging = "DEFAULT"
    }
  }

  name = "PythonSchedulerFargate"

  setting {
    name  = "containerInsights"
    value = "disabled"
  }
}

resource "aws_ecs_cluster" "tfer--SimulateDatabaseUsage" {
  capacity_providers = ["FARGATE", "FARGATE_SPOT"]

  configuration {
    execute_command_configuration {
      logging = "DEFAULT"
    }
  }

  name = "SimulateDatabaseUsage"

  setting {
    name  = "containerInsights"
    value = "disabled"
  }
}

resource "aws_ecs_cluster" "tfer--SpectrumGoBrokers" {
  capacity_providers = ["Infra-ECS-Cluster-SpectrumGoBrokers-5c5a0f32-EC2CapacityProvider-FfUzFBagRfaA"]

  configuration {
    execute_command_configuration {
      logging = "DEFAULT"
    }
  }

  default_capacity_provider_strategy {
    base              = "0"
    capacity_provider = "Infra-ECS-Cluster-SpectrumGoBrokers-5c5a0f32-EC2CapacityProvider-FfUzFBagRfaA"
    weight            = "1"
  }

  name = "SpectrumGoBrokers"

  setting {
    name  = "containerInsights"
    value = "disabled"
  }
}

resource "aws_ecs_cluster" "tfer--SpectrumGoWorkers" {
  capacity_providers = ["Infra-ECS-Cluster-SpectrumGoWorkers-1c37aa2c-EC2CapacityProvider-uF1wmsvmr2Ys"]

  configuration {
    execute_command_configuration {
      logging = "DEFAULT"
    }
  }

  default_capacity_provider_strategy {
    base              = "0"
    capacity_provider = "Infra-ECS-Cluster-SpectrumGoWorkers-1c37aa2c-EC2CapacityProvider-uF1wmsvmr2Ys"
    weight            = "1"
  }

  name = "SpectrumGoWorkers"

  setting {
    name  = "containerInsights"
    value = "disabled"
  }
}

resource "aws_ecs_cluster" "tfer--express-hello-world" {
  capacity_providers = ["FARGATE", "FARGATE_SPOT"]

  configuration {
    execute_command_configuration {
      logging = "DEFAULT"
    }
  }

  name = "express-hello-world"

  setting {
    name  = "containerInsights"
    value = "disabled"
  }
}
