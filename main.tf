hcl
# Configure the AWS provider
provider "aws" {
  region = var.aws_region
}

# Use the VPC module
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "3.0.0"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.vpc_availability_zones
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = var.enable_nat_gateway

  tags = {
    Terraform = "true"
    Environment = "production"
  }
}

# Launch a public EC2 instance
resource "aws_instance" "public_instance" {
  ami           = var.public_ami
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.vpc.default_security_group_id]

  tags = {
    Name = "PublicEC2Instance"
  }
}

# Launch a private EC2 instance
resource "aws_instance" "private_instance" {
  ami           = var.private_ami
  instance_type = var.instance_type
  subnet_id     = module.vpc.private_subnets[0]
  vpc_security_group_ids = [module.vpc.default_security_group_id]

  tags = {
    Name = "PrivateEC2Instance"
  }
}

