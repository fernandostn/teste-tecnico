output "ec2_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.minikube.id
}

output "ec2_dns_name" {
  description = "DNS name of the EC2 instance"
  value       = aws_instance.minikube.public_dns
}