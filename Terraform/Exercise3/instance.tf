resource "aws_key_pair" "keypair3" {
  key_name   = "exercise3"
  public_key = file("exercise3.pub")
}


resource "aws_instance" "exercise3" {
  ami                    = var.ami[var.region]
  instance_type          = "t2.micro"
  availability_zone      = var.zone
  key_name               = aws_key_pair.keypair3.key_name
  vpc_security_group_ids = ["sg-0406757970aec63ec"]
  tags = {
    Name        = "Exercise3"
    Environment = "ENV"
  }
  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod u+x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }
  connection {
    user        = var.user
    private_key = file("exercise3")
    host        = self.public_ip
  }
}