# Create Security Group - SSH Traffic
resource "aws_security_group" "vpc-ssh" {
  name        = "vpc-ssh"
  description = "Dev VPC SSH"
  
  ingress {
      description      = "Allow Port 22"
      from_port        = 22 
      to_port          = 22 
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    }

  egress {
      description = "Allow all ip and ports imports"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      # ipv6_cidr_blocks = ["::/0"]
    }

  tags = {
    Name = "vpc-ssh"
  }
}

# Create Security Group - Web Traffic
resource "aws_security_group" "vpc-web" {
  name        = "vpc-web"
  description = "Dev VPC web"
  ingress {
      description      = "Allow Port 443"
      from_port        = 443 
      to_port          = 443 
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    }
  
  egress {
      description = "Allow all ip and ports imports"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      # ipv6_cidr_blocks = ["::/0"]
    }

  tags = {
    Name = "vpc-web"
  }
}