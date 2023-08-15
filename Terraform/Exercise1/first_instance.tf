provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "instance1" {
  ami                    = "ami-02a89066c48741345"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-2a"
  key_name               = "exercise1"
  vpc_security_group_ids = ["sg-0406757970aec63ec"]
  tags = {
    Name        = "exercise1"
    Environment = "ENV"
  }
}