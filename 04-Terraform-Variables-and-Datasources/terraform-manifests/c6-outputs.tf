# Terraform Output Values

# EC2 Instance Public IP
output "instance_public_ip" {
  description = "ec2 instance public IP"
  value = aws_instance.myec2vm.public_ip
}

# EC2 Instance Public DNS
output "instance_public_dns" {
  description = "ec2 instance public IP"
  value = aws_instance.myec2vm.public_dns
}