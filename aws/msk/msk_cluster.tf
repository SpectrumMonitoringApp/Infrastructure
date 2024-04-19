resource "aws_msk_cluster" "tfer--spectrum-prod-msk" {
  broker_node_group_info {
    az_distribution = "DEFAULT"
    client_subnets  = ["subnet-033230007eb3f7de7", "subnet-0fdf2ac630ec98781"]
    ebs_volume_size = "10"
    instance_type   = "kafka.t3.small"
    security_groups = ["sg-0a2249cbe3177c964"]
  }

  client_authentication {
    sasl {
      iam   = "true"
      scram = "false"
    }
  }

  cluster_name = "spectrum-prod-msk"

  encryption_info {
    encryption_at_rest_kms_key_arn = "arn:aws:kms:us-east-1:992382393502:key/eceb4529-f2e8-46e2-b0fb-3ac2a9bdaa51"

    encryption_in_transit {
      client_broker = "TLS_PLAINTEXT"
      in_cluster    = "true"
    }
  }

  enhanced_monitoring = "DEFAULT"
  kafka_version       = "3.5.1"

  logging_info {
    broker_logs {
      cloudwatch_logs {
        enabled = "false"
      }

      firehose {
        enabled = "false"
      }

      s3 {
        enabled = "false"
      }
    }
  }

  number_of_broker_nodes = "2"

  open_monitoring {
    prometheus {
      jmx_exporter {
        enabled_in_broker = "false"
      }

      node_exporter {
        enabled_in_broker = "false"
      }
    }
  }
}
