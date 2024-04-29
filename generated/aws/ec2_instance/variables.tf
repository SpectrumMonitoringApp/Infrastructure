data "terraform_remote_state" "ebs" {
  backend = "local"

  config = {
    path = "../../../generated/aws/ebs/terraform.tfstate"
  }
}
