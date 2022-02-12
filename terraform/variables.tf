variable "ec2_name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = ""
}

variable "ami" {
  description = "AMI id for the EC2 instance"
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "SSH key name for the EC2 instance"
  type        = string
  default     = null
}

variable "lb_name" {
  description = "Name of the LoadBalancer"
  type        = string
  default     = ""
}

variable "tg_name" {
  description = "Name of the Target Group"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags list for EC2 instance"
  type        = map(string)
  default     = {}
}
