resource "aws_db_subnet_group" "tfer--default-vpc-01c2cb02a445369b1" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-01c2cb02a445369b1"
  subnet_ids  = ["subnet-01d0e83e01697d75b", "subnet-033230007eb3f7de7", "subnet-048219b0a008b3102", "subnet-0a1997b5e2eb268e6", "subnet-0dd5157430ea36c4d", "subnet-0fdf2ac630ec98781"]
}
