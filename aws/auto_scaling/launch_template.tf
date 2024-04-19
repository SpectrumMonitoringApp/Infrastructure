resource "aws_launch_template" "tfer--ECSLaunchTemplate_6jlRk2SfJcQf" {
  default_version         = "1"
  disable_api_termination = "false"

  iam_instance_profile {
    arn = "arn:aws:iam::992382393502:instance-profile/msk-spectrum-prod-role"
  }

  image_id               = "ami-0bd2f238e75f8092a"
  instance_type          = "t3.medium"
  name                   = "ECSLaunchTemplate_6jlRk2SfJcQf"
  user_data              = "IyEvYmluL2Jhc2ggCmVjaG8gRUNTX0NMVVNURVI9U3BlY3RydW1Hb1dvcmtlcnMgPj4gL2V0Yy9lY3MvZWNzLmNvbmZpZzs="
  vpc_security_group_ids = ["sg-0cf9550d4d7780b49"]
}

resource "aws_launch_template" "tfer--ECSLaunchTemplate_B2kFRs48SFtR" {
  default_version         = "1"
  disable_api_termination = "false"

  iam_instance_profile {
    arn = "arn:aws:iam::992382393502:instance-profile/msk-spectrum-prod-role"
  }

  image_id               = "ami-0bd2f238e75f8092a"
  instance_type          = "t3.medium"
  name                   = "ECSLaunchTemplate_B2kFRs48SFtR"
  user_data              = "IyEvYmluL2Jhc2ggCmVjaG8gRUNTX0NMVVNURVI9U3BlY3RydW1Hb0Jyb2tlcnMgPj4gL2V0Yy9lY3MvZWNzLmNvbmZpZzs="
  vpc_security_group_ids = ["sg-0cf9550d4d7780b49"]
}

resource "aws_launch_template" "tfer--ECSLaunchTemplate_WSh7iX983Ddm" {
  default_version         = "1"
  disable_api_termination = "false"

  iam_instance_profile {
    arn = "arn:aws:iam::992382393502:instance-profile/msk-spectrum-prod-role"
  }

  image_id               = "ami-0bd2f238e75f8092a"
  instance_type          = "t3.medium"
  key_name               = "ECS_EC2_Key"
  name                   = "ECSLaunchTemplate_WSh7iX983Ddm"
  user_data              = "IyEvYmluL2Jhc2ggCmVjaG8gRUNTX0NMVVNURVI9UHl0aG9uU2NoZWR1bGVyID4+IC9ldGMvZWNzL2Vjcy5jb25maWc7"
  vpc_security_group_ids = ["sg-0cf9550d4d7780b49"]
}

resource "aws_launch_template" "tfer--ECSLaunchTemplate_y6al4EbxIm7K" {
  default_version         = "1"
  disable_api_termination = "false"

  iam_instance_profile {
    arn = "arn:aws:iam::992382393502:instance-profile/ecsInstanceRole"
  }

  image_id               = "ami-0bd2f238e75f8092a"
  instance_type          = "t3.medium"
  name                   = "ECSLaunchTemplate_y6al4EbxIm7K"
  user_data              = "IyEvYmluL2Jhc2ggCmVjaG8gRUNTX0NMVVNURVI9SW5mbHV4RGJDbHVzdGVyID4+IC9ldGMvZWNzL2Vjcy5jb25maWc7"
  vpc_security_group_ids = ["sg-0cf9550d4d7780b49"]
}
