provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo_trafrm" {
  ami           = "ami-06f7b3cf9a1bd9bd2"
  instance_type = "t2.micro"

  tags = {
    Name = "1 using trafrm"
  }
}

