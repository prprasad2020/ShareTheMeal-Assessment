resource "aws_instance" "ec2" {
  ami                         = var.ami
  instance_type               = var.instance_type
  # associate_public_ip_address = "false"
  key_name                    = var.key_name
  user_data                   = file("initialize.sh")
  security_groups             = [aws_security_group.ec2_sg.name]

  tags = merge({ "Name" = var.ec2_name }, var.tags)
}
