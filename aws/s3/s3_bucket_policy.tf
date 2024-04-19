resource "aws_s3_bucket_policy" "tfer--tryspectrum-002E-site" {
  bucket = "tryspectrum.site"
  policy = "{\"Statement\":[{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Resource\":\"arn:aws:s3:::tryspectrum.site/*\",\"Sid\":\"Statement1\"}],\"Version\":\"2012-10-17\"}"
}
