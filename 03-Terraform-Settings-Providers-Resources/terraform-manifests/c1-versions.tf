# Terraform Block
terraform {
  required_version = "~> v1.0"
  required_providers {
      aws = {
      source = "hashicorp/aws"
      version = "~> 3.6"
  }
 }
}


# Provider Block
provider "aws" {
  region  = "us-east-1"
}

# resource "aws_instance" "ec2demo" {
#   ami           = "value"
#   instance_type = "value"
# }


/*
Note-1:  AWS Credentials Profile (profile = "default") configured on your local desktop terminal  
$HOME/.aws/credentials
*/