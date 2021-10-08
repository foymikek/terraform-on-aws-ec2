# Get latest AMI ID for Amazon Linux2 OS
#AMI = Amazon Machine Image, template for creating AWS virtual server, EC2. 
data "aws_ami" "amzlinux2" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["myami-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}