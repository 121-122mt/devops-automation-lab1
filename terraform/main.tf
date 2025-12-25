provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t2.medium"
  key_name      = "this is my firstkey.pem"

  tags = {
    Name = "Ansible-Server"
  }
}
