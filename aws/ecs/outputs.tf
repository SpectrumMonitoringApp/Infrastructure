output "aws_ecs_cluster_tfer--InfluxDbCluster_id" {
  value = "${aws_ecs_cluster.tfer--InfluxDbCluster.id}"
}

output "aws_ecs_cluster_tfer--PythonScheduler_id" {
  value = "${aws_ecs_cluster.tfer--PythonScheduler.id}"
}

output "aws_ecs_cluster_tfer--SpectrumGoBrokers_id" {
  value = "${aws_ecs_cluster.tfer--SpectrumGoBrokers.id}"
}

output "aws_ecs_cluster_tfer--SpectrumGoWorkers_id" {
  value = "${aws_ecs_cluster.tfer--SpectrumGoWorkers.id}"
}

output "aws_ecs_cluster_tfer--express-hello-world_id" {
  value = "${aws_ecs_cluster.tfer--express-hello-world.id}"
}

output "aws_ecs_service_tfer--InfluxDbCluster_influx-db-service_id" {
  value = "${aws_ecs_service.tfer--InfluxDbCluster_influx-db-service.id}"
}

output "aws_ecs_service_tfer--PythonScheduler_python-scheduler_id" {
  value = "${aws_ecs_service.tfer--PythonScheduler_python-scheduler.id}"
}

output "aws_ecs_service_tfer--SpectrumGoBrokers_spectrum-go-broker-service_id" {
  value = "${aws_ecs_service.tfer--SpectrumGoBrokers_spectrum-go-broker-service.id}"
}

output "aws_ecs_service_tfer--SpectrumGoWorkers_spectrum-go-worker-service-v2_id" {
  value = "${aws_ecs_service.tfer--SpectrumGoWorkers_spectrum-go-worker-service-v2.id}"
}

output "aws_ecs_service_tfer--express-hello-world_spectrum-be-prod-v3_id" {
  value = "${aws_ecs_service.tfer--express-hello-world_spectrum-be-prod-v3.id}"
}

output "aws_ecs_task_definition_tfer--task-definition-002F-express-hello-world_id" {
  value = "${aws_ecs_task_definition.tfer--task-definition-002F-express-hello-world.id}"
}

output "aws_ecs_task_definition_tfer--task-definition-002F-influx-db_id" {
  value = "${aws_ecs_task_definition.tfer--task-definition-002F-influx-db.id}"
}

output "aws_ecs_task_definition_tfer--task-definition-002F-nginxdemos-hello_id" {
  value = "${aws_ecs_task_definition.tfer--task-definition-002F-nginxdemos-hello.id}"
}

output "aws_ecs_task_definition_tfer--task-definition-002F-python-scheduler_id" {
  value = "${aws_ecs_task_definition.tfer--task-definition-002F-python-scheduler.id}"
}

output "aws_ecs_task_definition_tfer--task-definition-002F-spectrum-be-prod_id" {
  value = "${aws_ecs_task_definition.tfer--task-definition-002F-spectrum-be-prod.id}"
}

output "aws_ecs_task_definition_tfer--task-definition-002F-spectrum-go-broker_id" {
  value = "${aws_ecs_task_definition.tfer--task-definition-002F-spectrum-go-broker.id}"
}

output "aws_ecs_task_definition_tfer--task-definition-002F-spectrum-go-worker_id" {
  value = "${aws_ecs_task_definition.tfer--task-definition-002F-spectrum-go-worker.id}"
}
