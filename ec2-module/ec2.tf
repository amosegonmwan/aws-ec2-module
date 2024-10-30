resource "aws_instance" "my-ec2-instance" {
  instance_type = "t2.micro"
  ami = data.aws_ami.ubuntu.id

  tags = {
    Name = var.tag-name
  }
}

