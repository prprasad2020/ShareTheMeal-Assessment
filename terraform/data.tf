data "aws_ami" "amzn2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*"]
  }

  owners = ["137112412989"]
}

data "http" "myip" {
  url = "https://ipv4.icanhazip.com"
}

data "aws_vpc" "vpc" {
}

data "aws_subnet_ids" "subnet" {
  vpc_id = data.aws_vpc.vpc.id
}
