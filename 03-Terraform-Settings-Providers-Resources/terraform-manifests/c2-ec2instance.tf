# Resource: EC2 Instance
resource "aws_instance" "myec2vm" {
  ami = "ami-087c17d1fe0178315"
  instance_type = "t3.micro"
}