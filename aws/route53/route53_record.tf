resource "aws_route53_record" "tfer--Z0124932BQ7S29GU2MP7__53aa1dd1a14aaaf9dd64134e984a0015-002E-api-002E-tryspectrum-002E-site-002E-_CNAME_" {
  name    = "_53aa1dd1a14aaaf9dd64134e984a0015.api.tryspectrum.site"
  records = ["_9831b50a02ac740783eb44fe82bb3947.mhbtsbpdnt.acm-validations.aws."]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z0124932BQ7S29GU2MP7_tryspectrum-002E-site.zone_id}"
}

resource "aws_route53_record" "tfer--Z0124932BQ7S29GU2MP7__b8d39986402279c4ee7c36b900d44377-002E-tryspectrum-002E-site-002E-_CNAME_" {
  name    = "_b8d39986402279c4ee7c36b900d44377.tryspectrum.site"
  records = ["_68e505f1645d089cadf92acf7c82d432.mhbtsbpdnt.acm-validations.aws."]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z0124932BQ7S29GU2MP7_tryspectrum-002E-site.zone_id}"
}

resource "aws_route53_record" "tfer--Z0124932BQ7S29GU2MP7__ffb6254e921adda47460e626b38f91b2-002E-www-002E-tryspectrum-002E-site-002E-_CNAME_" {
  name    = "_ffb6254e921adda47460e626b38f91b2.www.tryspectrum.site"
  records = ["_1fa47a6cb3979a5b91c3d79ab3c9ab0d.mhbtsbpdnt.acm-validations.aws."]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z0124932BQ7S29GU2MP7_tryspectrum-002E-site.zone_id}"
}

resource "aws_route53_record" "tfer--Z0124932BQ7S29GU2MP7_api-002E-tryspectrum-002E-site-002E-_A_" {
  alias {
    evaluate_target_health = "true"
    name                   = "albforspectrumbe-814938619.us-east-1.elb.amazonaws.com"
    zone_id                = "Z35SXDOTRQ7X7K"
  }

  name    = "api.tryspectrum.site"
  type    = "A"
  zone_id = "${aws_route53_zone.tfer--Z0124932BQ7S29GU2MP7_tryspectrum-002E-site.zone_id}"
}

resource "aws_route53_record" "tfer--Z0124932BQ7S29GU2MP7_tryspectrum-002E-site-002E-_A_" {
  alias {
    evaluate_target_health = "false"
    name                   = "d3kwrx1b5np9la.cloudfront.net"
    zone_id                = "Z2FDTNDATAQYW2"
  }

  name    = "tryspectrum.site"
  type    = "A"
  zone_id = "${aws_route53_zone.tfer--Z0124932BQ7S29GU2MP7_tryspectrum-002E-site.zone_id}"
}

resource "aws_route53_record" "tfer--Z0124932BQ7S29GU2MP7_tryspectrum-002E-site-002E-_NS_" {
  name    = "tryspectrum.site"
  records = ["ns-1073.awsdns-06.org.", "ns-1835.awsdns-37.co.uk.", "ns-33.awsdns-04.com.", "ns-774.awsdns-32.net."]
  ttl     = "300"
  type    = "NS"
  zone_id = "${aws_route53_zone.tfer--Z0124932BQ7S29GU2MP7_tryspectrum-002E-site.zone_id}"
}

resource "aws_route53_record" "tfer--Z0124932BQ7S29GU2MP7_tryspectrum-002E-site-002E-_SOA_" {
  name    = "tryspectrum.site"
  records = ["ns-774.awsdns-32.net. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
  ttl     = "900"
  type    = "SOA"
  zone_id = "${aws_route53_zone.tfer--Z0124932BQ7S29GU2MP7_tryspectrum-002E-site.zone_id}"
}

resource "aws_route53_record" "tfer--Z0124932BQ7S29GU2MP7_www-002E-tryspectrum-002E-site-002E-_CNAME_" {
  name    = "www.tryspectrum.site"
  records = ["tryspectrum.site"]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z0124932BQ7S29GU2MP7_tryspectrum-002E-site.zone_id}"
}
