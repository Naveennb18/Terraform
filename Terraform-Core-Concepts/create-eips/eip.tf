provider "aws" {
  region     = "eu-central-1"
  shared_config_files = ["/Users/naveen.noor/Desktop/my-github-repos/Terraform/Terraform-Core-Concepts/.aws/conf"]
  shared_credentials_files = ["/Users/naveen.noor/Desktop/my-github-repos/Terraform/Terraform-Core-Concepts/.aws/creds"]
  profile = "default"
}

resource "aws_eip" "lb" {
#  instance = aws_instance.web.id
  domain   = "vpc"
}