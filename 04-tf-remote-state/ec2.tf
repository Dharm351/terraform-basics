provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo1" {
  ami           = "ami-06f7b3cf9a1bd9bd2"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow.id]

  tags   = {
    Name = "using trafrm"
  }
}

output "pub_ip" {
    value = aws_instance.demo1.public_ip 
}

## Creating a Security group

resource "aws_security_group" "allow" {
  name        = "allow1_ssh"
  description = "Allow ssh inbound traffic"
  
  ingress {
    description      = "ssh from internet"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "allow1_ssh_sg"
  }
}

