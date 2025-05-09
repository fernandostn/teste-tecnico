output "ec2_id" {
  description = "ID of the EC2 instance"
  value       = module.ec2.ec2_id
}

output "ec2_dns_name" {
  description = "DNS name of the EC2 instance"
  value       = module.ec2.ec2_dns_name
}

output "vpc_id" {
  description = "Id of the VPC"
  value       = module.vpc.vpc_id
}