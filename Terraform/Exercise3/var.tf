variable "region" {
  default = "us-east-2"
}

variable "zone" {
  default = "us-east-2a"
}

variable "ami" {
  type = map(any)
  default = {
    us-east-2 = "ami-02a89066c48741345"
  }
}

variable "user" {
  default = "ec2-user"
}