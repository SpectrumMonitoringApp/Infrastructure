resource "aws_instance" "tfer--i-017e668cca3283f40_ECS-0020-Instance-0020---0020-PythonScheduler" {
  ami                         = "ami-0bd2f238e75f8092a"
  associate_public_ip_address = "true"
  availability_zone           = "us-east-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "1"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "msk-spectrum-prod-role"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.medium"
  ipv6_address_count                   = "0"
  key_name                             = "ECS_EC2_Key"

  launch_template {
    id   = "lt-027e91dccdea239a8"
    name = "ECSLaunchTemplate_WSh7iX983Ddm"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"
  private_ip = "172.31.92.18"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    volume_size           = "30"
    volume_type           = "gp2"
  }

  security_groups   = ["launch-wizard-1"]
  source_dest_check = "true"
  subnet_id         = "subnet-033230007eb3f7de7"

  tags = {
    AmazonECSManaged = ""
    Name             = "ECS Instance - PythonScheduler"
  }

  tags_all = {
    AmazonECSManaged = ""
    Name             = "ECS Instance - PythonScheduler"
  }

  tenancy                = "default"
  user_data_base64       = "IyEvYmluL2Jhc2ggCmVjaG8gRUNTX0NMVVNURVI9UHl0aG9uU2NoZWR1bGVyID4+IC9ldGMvZWNzL2Vjcy5jb25maWc7"
  vpc_security_group_ids = ["sg-0cf9550d4d7780b49"]
}

resource "aws_instance" "tfer--i-0192275b5496da8bc_ECS-0020-Instance-0020---0020-InfluxDbCluster" {
  ami                         = "ami-0bd2f238e75f8092a"
  associate_public_ip_address = "true"
  availability_zone           = "us-east-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "1"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "ecsInstanceRole"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.medium"
  ipv6_address_count                   = "0"

  launch_template {
    id   = "lt-0e202799c168d1653"
    name = "ECSLaunchTemplate_y6al4EbxIm7K"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"
  private_ip = "172.31.89.16"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    volume_size           = "30"
    volume_type           = "gp2"
  }

  security_groups   = ["launch-wizard-1"]
  source_dest_check = "true"
  subnet_id         = "subnet-033230007eb3f7de7"

  tags = {
    Name = "ECS Instance - InfluxDbCluster"
  }

  tags_all = {
    Name = "ECS Instance - InfluxDbCluster"
  }

  tenancy                = "default"
  user_data_base64       = "IyEvYmluL2Jhc2ggCmVjaG8gRUNTX0NMVVNURVI9SW5mbHV4RGJDbHVzdGVyID4+IC9ldGMvZWNzL2Vjcy5jb25maWc7"
  vpc_security_group_ids = ["sg-0cf9550d4d7780b49"]
}

resource "aws_instance" "tfer--i-074c69f4bdf562408_ECS-0020-Instance-0020---0020-SpectrumGoBrokers" {
  ami                         = "ami-0bd2f238e75f8092a"
  associate_public_ip_address = "true"
  availability_zone           = "us-east-1c"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "1"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "msk-spectrum-prod-role"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.medium"
  ipv6_address_count                   = "0"

  launch_template {
    id   = "lt-0fb56978166beb8f8"
    name = "ECSLaunchTemplate_B2kFRs48SFtR"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"
  private_ip = "172.31.34.148"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    volume_size           = "30"
    volume_type           = "gp2"
  }

  security_groups   = ["launch-wizard-1"]
  source_dest_check = "true"
  subnet_id         = "subnet-01d0e83e01697d75b"

  tags = {
    Name = "ECS Instance - SpectrumGoBrokers"
  }

  tags_all = {
    Name = "ECS Instance - SpectrumGoBrokers"
  }

  tenancy                = "default"
  user_data_base64       = "IyEvYmluL2Jhc2ggCmVjaG8gRUNTX0NMVVNURVI9U3BlY3RydW1Hb0Jyb2tlcnMgPj4gL2V0Yy9lY3MvZWNzLmNvbmZpZzs="
  vpc_security_group_ids = ["sg-0cf9550d4d7780b49"]
}

resource "aws_instance" "tfer--i-09c1518b57af3a6f3_ECS-0020-Instance-0020---0020-SpectrumGoWorkers" {
  ami                         = "ami-0bd2f238e75f8092a"
  associate_public_ip_address = "true"
  availability_zone           = "us-east-1c"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "1"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "msk-spectrum-prod-role"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.medium"
  ipv6_address_count                   = "0"

  launch_template {
    id   = "lt-09c1c39b262b5f1ec"
    name = "ECSLaunchTemplate_6jlRk2SfJcQf"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"
  private_ip = "172.31.45.120"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    volume_size           = "30"
    volume_type           = "gp2"
  }

  security_groups   = ["launch-wizard-1"]
  source_dest_check = "true"
  subnet_id         = "subnet-01d0e83e01697d75b"

  tags = {
    AmazonECSManaged = ""
    Name             = "ECS Instance - SpectrumGoWorkers"
  }

  tags_all = {
    AmazonECSManaged = ""
    Name             = "ECS Instance - SpectrumGoWorkers"
  }

  tenancy                = "default"
  user_data_base64       = "IyEvYmluL2Jhc2ggCmVjaG8gRUNTX0NMVVNURVI9U3BlY3RydW1Hb1dvcmtlcnMgPj4gL2V0Yy9lY3MvZWNzLmNvbmZpZzs="
  vpc_security_group_ids = ["sg-0cf9550d4d7780b49"]
}

resource "aws_instance" "tfer--i-0b7dd2fa3bb41e126_MSKTutorialClient" {
  ami                         = "ami-051f8a213df8bc089"
  associate_public_ip_address = "true"
  availability_zone           = "us-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "1"
  cpu_threads_per_core = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "msk-spectrum-prod-role"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = "0"
  key_name                             = "MSKKeyPair"

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"
  private_ip = "172.31.28.125"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "3000"
    throughput            = "125"
    volume_size           = "8"
    volume_type           = "gp3"
  }

  security_groups   = ["launch-wizard-1"]
  source_dest_check = "true"
  subnet_id         = "subnet-0fdf2ac630ec98781"

  tags = {
    Name = "MSKTutorialClient"
  }

  tags_all = {
    Name = "MSKTutorialClient"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0cf9550d4d7780b49"]
}
