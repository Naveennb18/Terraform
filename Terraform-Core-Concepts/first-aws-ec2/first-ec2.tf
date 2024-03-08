provider "aws" {
  region     = "eu-central-1"
  shared_config_files = ["/Users/naveen.noor/Desktop/my-github-repos/Terraform/Terraform-Core-Concepts/.aws/conf"]
  shared_credentials_files = ["/Users/naveen.noor/Desktop/my-github-repos/Terraform/Terraform-Core-Concepts/.aws/creds"]
  profile = "default"
}

resource "aws_instance" "first-ec2" {
  ami           = "ami-0a23a9827c6dab833"
  instance_type = "t2.micro"
  tags          = {
    Name = "tf-instance"
  }
}
/*
resource "aws_instance" "second-ec2" {
    ami = "ami-0a23a9827c6dab833"
    instnce_type = "t2.micro"
    tags = {
    Name = "second-tf-instance"
    }
}

provider azurerm {}
*/