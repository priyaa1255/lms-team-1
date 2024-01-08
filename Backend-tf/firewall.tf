provider "aws" {
  region = "us-east-1" 
}

resource "aws_security_group" "aws_sg" {
  name        = "sg-07d05ad1d488df536"
  description = "Security Group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }
}

