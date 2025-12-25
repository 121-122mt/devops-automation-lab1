provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.medium"
  key_name      = "this is my firstkey"
  tags = {
    Name = "Ansible-Server"
  }
}

