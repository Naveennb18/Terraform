provider "aws" {
  region     = "eu-central-1"
  access_key = "AKIA2UC3FY5SCZBDK56S"
  secret_key = "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"
}

resource "aws_instance" "first-ec2" {
  ami           = "ami-0a23a9827c6dab833"
  instance_type = "t2.micro"
  tags          = {
    Name = "first-tf-instance"
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