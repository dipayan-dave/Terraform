variable "region" {
  default = "us-east-2"
}
variable "zone1" {
  default = "us-east-2a"
}

variable "ami" {
  type = map
  default = {
    us-east-2 = "ami-02a89066c48741345"
    us-east-1 = "ami-0f34c5ae932e6f0e4"
  }
}