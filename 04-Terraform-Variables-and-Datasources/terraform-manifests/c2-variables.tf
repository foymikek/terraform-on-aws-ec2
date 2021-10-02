# Input Variables
# AWS Region
variable "aws_region" {
  description = "region in which the aws resource to be created"
  type = string
  default = "us-east-1"
}

# AWS EC2 Instance Type
variable "instance_type" {
   description = "EC2 Instance Type"
  type = string
  default = "t3.micro"
  sensitive = false 
}

# AWS EC2 Instance Key Pair
variable "variable_keypair" {
  description = "AWS EC2 keypair to be associaged with EC2 instance"
  type = string
  default = "terraform-key"
}