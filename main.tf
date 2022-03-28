terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

module "terraform_aws_vpc" {
  source="./modules/vpc"
  public_subnets= var.public_subnets
  private_subnets= var.private_subnets
}
module "terraform_aws_securitygroup" {
  source="./modules/security-group"
  vpc_id= module.terraform_aws_vpc.vpc_id
  cidr_block= module.terraform_aws_vpc.vpc_cidr_block
  ipv6_cidr_block= module.terraform_aws_vpc.vpc_ipv6_cidr_block
  group_name= var.group_name
  group_description= var.group_description
}
