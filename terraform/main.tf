terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "teste-tecnico"
    key    = "state/testetecnico.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.project_region

  default_tags {
    tags = {
      owner      = var.project_owner
      managed-by = var.project_managed_by
    }
  }
}

module "vpc" {
  source = "./modules/vpc"

  project_region = var.project_region
  project_name   = var.project_name
  vpc_cidr       = var.vpc_cidr_project
}

module "ec2" {
  source = "./modules/ec2"

  project_region   = var.project_region
  project_name     = var.project_name
  allowed_ssh_cidr = var.allowed_ssh_cidr
  instance_type    = var.instance_type
  name_ec2         = var.name_ec2
  ami_id           = var.ami_id
  public_key       = var.public_key
  public_subnet_id = module.vpc.public_subnet_id
  vpc_id           = module.vpc.vpc_id
}