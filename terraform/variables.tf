variable "allowed_ssh_cidr" {
  description = "Allow SSH access from this CIDR"
  type        = list(string)
  default     = ["179.218.18.19/32"]  # IP local que terá acesso SSH
}

variable "public_key" {
  description = "Public key to SSH access"
  type        = string
  default     = "~/.ssh/id_ed25519.pub" # Caminho local da chave pública
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "teste-tecnico"
}

variable "project_region" {
  description = "Region of the project"
  type        = string
  default     = "us-east-1"
}

variable "project_owner" {
  description = "Owner of the project"
  type        = string
  default     = "Fernando Santana"
}

variable "project_managed_by" {
  description = "How the project is managed"
  type        = string
  default     = "IAC Terraform"
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.medium"
}

variable "name_ec2" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "minikube"
}

variable "ami_id" {
  description = "AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-084568db4383264d4"
}

variable "vpc_cidr_project" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.10.0.0/16"
}