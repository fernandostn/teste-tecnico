variable "project_region" {
  description = "Region of the project"
}

variable "project_name" {
  description = "Name of the project"
}

variable "allowed_ssh_cidr" {
  description = "Allow SSH access from this CIDR"
}

variable "vpc_id" {
  description = "ID of the VPC"
}

variable "instance_type" {
  description = "Type of EC2 instance"
}

variable "name_ec2" {
  description = "Name of the EC2 instance"
}

variable "ami_id" {
  description = "AMI ID to use for the EC2 instance"
}

variable "public_key" {
  description = "Public key to SSH access"
}

variable "public_subnet_id" {
  description = "CIDR block for the VPC"
}