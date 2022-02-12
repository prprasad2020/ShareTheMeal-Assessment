resource "aws_security_group" "ec2_sg" {
  name        = "allow_ssh"
  description = "Allow inbound traffic from my IP"
  vpc_id      = data.aws_vpc.vpc.id

  ingress {
    description = "SSH from my IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${chomp(data.http.myip.body)}/32"]
  }

  ingress {
    description     = "Traffic from LB SG"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.lb_sg.id]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = var.tags
}

resource "aws_instance" "ec2" {
  ami                         = var.ami
  instance_type               = var.instance_type
  associate_public_ip_address = "false"
  key_name                    = var.key_name
  user_data                   = file("initialize.sh")
  security_groups             = [aws_security_group.ec2_sg.name]

  tags = merge({ "Name" = var.ec2_name }, var.tags)
}
