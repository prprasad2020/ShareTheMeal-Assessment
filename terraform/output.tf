output "ec2_id" {
  description = "The EC2 instance id"
  value       = try(aws_instance.ec2.id)
}

output "lb_dns" {
  description = "DNS endpoint of the LoadBalance"
  value       = try(aws_lb.lb.dns_name)
}
