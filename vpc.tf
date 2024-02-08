resource "aws_vpc" "OM_vpc" {
  cidr_block = var.cidr
  provisioner "local-exec" {
    command = "mkdir ${self.id}"
  }
  tags = {
    Name = "main"
  }
}

