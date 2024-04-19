resource "aws_db_instance" "tfer--spectrum-production" {
  allocated_storage                     = "20"
  auto_minor_version_upgrade            = "true"
  availability_zone                     = "us-east-1d"
  backup_retention_period               = "1"
  backup_window                         = "03:06-03:36"
  ca_cert_identifier                    = "rds-ca-rsa2048-g1"
  copy_tags_to_snapshot                 = "true"
  customer_owned_ip_enabled             = "false"
  db_subnet_group_name                  = "${aws_db_subnet_group.tfer--default-vpc-01c2cb02a445369b1.name}"
  deletion_protection                   = "false"
  engine                                = "mysql"
  engine_version                        = "8.0.35"
  iam_database_authentication_enabled   = "false"
  identifier                            = "spectrum-production"
  instance_class                        = "db.t3.micro"
  iops                                  = "0"
  kms_key_id                            = "arn:aws:kms:us-east-1:992382393502:key/a1dd7fbb-e559-48f5-814c-44fdf510c103"
  license_model                         = "general-public-license"
  maintenance_window                    = "fri:05:56-fri:06:26"
  max_allocated_storage                 = "1000"
  monitoring_interval                   = "0"
  multi_az                              = "false"
  option_group_name                     = "default:mysql-8-0"
  parameter_group_name                  = "default.mysql8.0"
  performance_insights_enabled          = "false"
  performance_insights_retention_period = "0"
  port                                  = "3306"
  publicly_accessible                   = "true"
  storage_encrypted                     = "true"
  storage_type                          = "gp2"
  username                              = "admin"
  vpc_security_group_ids                = ["sg-026b44930c5296578"]
}