resource "aws_acm_certificate" "tfer--4001de68-db3a-43d9-b993-97b4e829258b_tryspectrum-002E-site" {
  domain_name = "tryspectrum.site"

  options {
    certificate_transparency_logging_preference = "ENABLED"
  }

  subject_alternative_names = ["www.tryspectrum.site"]
  validation_method         = "DNS"
}

resource "aws_acm_certificate" "tfer--fc2d0b2e-e815-4660-b6b0-659a86b50d6e_api-002E-tryspectrum-002E-site" {
  domain_name = "api.tryspectrum.site"

  options {
    certificate_transparency_logging_preference = "ENABLED"
  }

  validation_method = "DNS"
}
