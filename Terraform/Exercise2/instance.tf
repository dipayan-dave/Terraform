resource "aws_instance" "amazonlnx" {
    ami = var.ami[var.region]
    instance_type = "t2.micro"
    availability_zone = var.zone1
}