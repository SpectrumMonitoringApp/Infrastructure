output "aws_ecr_repository_tfer--express-hello-world_id" {
  value = "${aws_ecr_repository.tfer--express-hello-world.id}"
}

output "aws_ecr_repository_tfer--python-scheduler_id" {
  value = "${aws_ecr_repository.tfer--python-scheduler.id}"
}

output "aws_ecr_repository_tfer--simulate-database-usage_id" {
  value = "${aws_ecr_repository.tfer--simulate-database-usage.id}"
}

output "aws_ecr_repository_tfer--spectrum-go-broker_id" {
  value = "${aws_ecr_repository.tfer--spectrum-go-broker.id}"
}

output "aws_ecr_repository_tfer--spectrum-go-worker_id" {
  value = "${aws_ecr_repository.tfer--spectrum-go-worker.id}"
}

output "aws_ecr_repository_tfer--spectrum-prod_id" {
  value = "${aws_ecr_repository.tfer--spectrum-prod.id}"
}
