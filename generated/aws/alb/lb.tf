resource "aws_lb" "tfer--ALBForSpectrumBe" {
  desync_mitigation_mode           = "defensive"
  drop_invalid_header_fields       = "false"
  enable_cross_zone_load_balancing = "true"
  enable_deletion_protection       = "false"
  enable_http2                     = "true"
  enable_waf_fail_open             = "false"
  idle_timeout                     = "60"
  internal                         = "false"
  ip_address_type                  = "ipv4"
  load_balancer_type               = "application"
  name                             = "ALBForSpectrumBe"
  security_groups                  = ["sg-026b44930c5296578"]

  subnet_mapping {
    subnet_id = "subnet-01d0e83e01697d75b"
  }

  subnet_mapping {
    subnet_id = "subnet-033230007eb3f7de7"
  }

  subnet_mapping {
    subnet_id = "subnet-048219b0a008b3102"
  }

  subnet_mapping {
    subnet_id = "subnet-0a1997b5e2eb268e6"
  }

  subnet_mapping {
    subnet_id = "subnet-0dd5157430ea36c4d"
  }

  subnet_mapping {
    subnet_id = "subnet-0fdf2ac630ec98781"
  }

  subnets = ["subnet-01d0e83e01697d75b", "subnet-033230007eb3f7de7", "subnet-048219b0a008b3102", "subnet-0a1997b5e2eb268e6", "subnet-0dd5157430ea36c4d", "subnet-0fdf2ac630ec98781"]
}

resource "aws_lb" "tfer--InfluxDbLoadBalancer" {
  desync_mitigation_mode           = "defensive"
  drop_invalid_header_fields       = "false"
  enable_cross_zone_load_balancing = "true"
  enable_deletion_protection       = "false"
  enable_http2                     = "true"
  enable_waf_fail_open             = "false"
  idle_timeout                     = "60"
  internal                         = "false"
  ip_address_type                  = "ipv4"
  load_balancer_type               = "application"
  name                             = "InfluxDbLoadBalancer"
  security_groups                  = ["sg-0acf6737ca71ee215"]

  subnet_mapping {
    subnet_id = "subnet-01d0e83e01697d75b"
  }

  subnet_mapping {
    subnet_id = "subnet-033230007eb3f7de7"
  }

  subnet_mapping {
    subnet_id = "subnet-048219b0a008b3102"
  }

  subnet_mapping {
    subnet_id = "subnet-0a1997b5e2eb268e6"
  }

  subnet_mapping {
    subnet_id = "subnet-0dd5157430ea36c4d"
  }

  subnet_mapping {
    subnet_id = "subnet-0fdf2ac630ec98781"
  }

  subnets = ["subnet-01d0e83e01697d75b", "subnet-033230007eb3f7de7", "subnet-048219b0a008b3102", "subnet-0a1997b5e2eb268e6", "subnet-0dd5157430ea36c4d", "subnet-0fdf2ac630ec98781"]
}
