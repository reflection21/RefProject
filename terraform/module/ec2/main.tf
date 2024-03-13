resource "aws_instance" "web" {
  count                       = 1
  ami                         = data.aws_ami.amazon-2.id
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  security_groups             = [var.sg]
  subnet_id                   = var.subnet
  availability_zone           = data.aws_availability_zones.available_zone.names[0]

  tags = {
    Name = "Web-server"
  }
}
