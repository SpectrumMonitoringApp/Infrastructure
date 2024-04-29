resource "aws_instance" "tfer--i-0b7dd2fa3bb41e126_MSKTutorialClient" {
  ami                         = "ami-051f8a213df8bc089"
  associate_public_ip_address = "false"
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
