resource "aws_ecs_task_definition" "tfer--task-definition-002F-express-hello-world" {
  container_definitions    = "[{\"cpu\":0,\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"992382393502.dkr.ecr.us-east-1.amazonaws.com/express-hello-world:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/express-hello-world\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"express-hello-world\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":8080,\"hostPort\":8080,\"name\":\"8080\",\"protocol\":\"tcp\"}],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "512"
  execution_role_arn       = "arn:aws:iam::992382393502:role/ecsTaskExecutionRole"
  family                   = "express-hello-world"
  memory                   = "1024"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-influx-db" {
  container_definitions    = "[{\"cpu\":0,\"environment\":[{\"name\":\"DOCKER_INFLUXDB_INIT_ADMIN_TOKEN\",\"value\":\"MkSDyNlocaNlRdJ\"},{\"name\":\"DOCKER_INFLUXDB_INIT_BUCKET\",\"value\":\"bmykhaylivvv-bucket\"},{\"name\":\"DOCKER_INFLUXDB_INIT_MODE\",\"value\":\"setup\"},{\"name\":\"DOCKER_INFLUXDB_INIT_ORG\",\"value\":\"bmykhaylivvv-org\"},{\"name\":\"DOCKER_INFLUXDB_INIT_PASSWORD\",\"value\":\"bmykhaylivvv-password\"},{\"name\":\"DOCKER_INFLUXDB_INIT_RETENTION\",\"value\":\"1w\"},{\"name\":\"DOCKER_INFLUXDB_INIT_USERNAME\",\"value\":\"bmykhaylivvv\"}],\"environmentFiles\":[],\"essential\":true,\"image\":\"influxdb:2.0\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/influx-db\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"influx-db\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":8086,\"hostPort\":8086,\"name\":\"8086\",\"protocol\":\"tcp\"}],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "1024"
  execution_role_arn       = "arn:aws:iam::992382393502:role/ecsTaskExecutionRole"
  family                   = "influx-db"
  memory                   = "3072"
  network_mode             = "awsvpc"
  requires_compatibilities = ["EC2"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-nginxdemos-hello" {
  container_definitions    = "[{\"cpu\":0,\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"nginxdemos/hello\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/nginxdemos-hello\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"nginxdemos-hello\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":80,\"hostPort\":80,\"name\":\"80\",\"protocol\":\"tcp\"}],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "512"
  execution_role_arn       = "arn:aws:iam::992382393502:role/ecsTaskExecutionRole"
  family                   = "nginxdemos-hello"
  memory                   = "1024"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-python-scheduler" {
  container_definitions    = "[{\"cpu\":0,\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"992382393502.dkr.ecr.us-east-1.amazonaws.com/python-scheduler:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/python-scheduler\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"python-scheduler\",\"portMappings\":[],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "1024"
  execution_role_arn       = "arn:aws:iam::992382393502:role/ecsTaskExecutionRole"
  family                   = "python-scheduler"
  memory                   = "3072"
  network_mode             = "bridge"
  requires_compatibilities = ["EC2"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-python-scheduler-fargate" {
  container_definitions    = "[{\"cpu\":0,\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"992382393502.dkr.ecr.us-east-1.amazonaws.com/python-scheduler:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/python-scheduler-fargate\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"python-scheduler-fargate\",\"portMappings\":[],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "512"
  execution_role_arn       = "arn:aws:iam::992382393502:role/ecsTaskExecutionRole"
  family                   = "python-scheduler-fargate"
  memory                   = "1024"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  task_role_arn = "arn:aws:iam::992382393502:role/ecsTaskExecutionRole"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-simulate-database-usage" {
  container_definitions    = "[{\"cpu\":0,\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"992382393502.dkr.ecr.us-east-1.amazonaws.com/simulate-database-usage:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/simulate-database-usage\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"simulate-database-usage\",\"portMappings\":[],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "512"
  execution_role_arn       = "arn:aws:iam::992382393502:role/ecsTaskExecutionRole"
  family                   = "simulate-database-usage"
  memory                   = "1024"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  task_role_arn = "arn:aws:iam::992382393502:role/ecsTaskExecutionRole"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-spectrum-be-prod" {
  container_definitions    = "[{\"cpu\":0,\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"992382393502.dkr.ecr.us-east-1.amazonaws.com/spectrum-prod:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/spectrum-be-prod\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"spectrum-be-prod\",\"portMappings\":[{\"appProtocol\":\"http\",\"containerPort\":8000,\"hostPort\":8000,\"name\":\"8000\",\"protocol\":\"tcp\"}],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "2048"
  execution_role_arn       = "arn:aws:iam::992382393502:role/ecsTaskExecutionRole"
  family                   = "spectrum-be-prod"
  memory                   = "4096"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-spectrum-go-broker" {
  container_definitions    = "[{\"cpu\":0,\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"992382393502.dkr.ecr.us-east-1.amazonaws.com/spectrum-go-broker:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/spectrum-go-broker\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"spectrum-go-broker\",\"portMappings\":[],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "1024"
  execution_role_arn       = "arn:aws:iam::992382393502:role/ecsTaskExecutionRole"
  family                   = "spectrum-go-broker"
  memory                   = "3072"
  network_mode             = "bridge"
  requires_compatibilities = ["EC2"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-spectrum-go-worker" {
  container_definitions    = "[{\"cpu\":0,\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"image\":\"992382393502.dkr.ecr.us-east-1.amazonaws.com/spectrum-go-worker:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-create-group\":\"true\",\"awslogs-group\":\"/ecs/spectrum-go-worker\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"spectrum-go-worker\",\"portMappings\":[],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "1024"
  execution_role_arn       = "arn:aws:iam::992382393502:role/ecsTaskExecutionRole"
  family                   = "spectrum-go-worker"
  memory                   = "3072"
  network_mode             = "bridge"
  requires_compatibilities = ["EC2"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  task_role_arn = "arn:aws:iam::992382393502:role/ecsTaskExecutionRole"
}
