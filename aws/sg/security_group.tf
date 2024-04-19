resource "aws_security_group" "tfer--default_sg-026b44930c5296578" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["45.84.121.213/32"]
    from_port   = "9098"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9098"
  }

  ingress {
    from_port       = "0"
    protocol        = "-1"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--launch-wizard-1_sg-0cf9550d4d7780b49_id}"]
    self            = "true"
    to_port         = "0"
  }

  name   = "default"
  vpc_id = "vpc-01c2cb02a445369b1"
}

resource "aws_security_group" "tfer--influx-db-sg_sg-0acf6737ca71ee215" {
  description = "SG for InfluxDB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "0"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "-1"
    self             = "false"
    to_port          = "0"
  }

  name   = "influx-db-sg"
  vpc_id = "vpc-01c2cb02a445369b1"
}

resource "aws_security_group" "tfer--launch-wizard-1_sg-0cf9550d4d7780b49" {
  description = "launch-wizard-1 created 2024-04-12T15:59:32.426Z"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "launch-wizard-1"
  vpc_id = "vpc-01c2cb02a445369b1"
}

resource "aws_security_group" "tfer--msk-spectrum-prod-sg_sg-0a2249cbe3177c964" {
  description = "msk-spectrum-prod-sg"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port       = "0"
    protocol        = "-1"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--launch-wizard-1_sg-0cf9550d4d7780b49_id}"]
    self            = "false"
    to_port         = "0"
  }

  name   = "msk-spectrum-prod-sg"
  vpc_id = "vpc-01c2cb02a445369b1"
}

resource "aws_security_group" "tfer--spectrum-be_sg-0fed5b9b7314b5c66" {
  description = "SG for spectrum back-end"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name   = "spectrum-be"
  vpc_id = "vpc-01c2cb02a445369b1"
}
