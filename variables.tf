variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1" # Replace with your desired AWS region
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "MainVPC"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "The availability zones for the VPC subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"] # Replace with your desired availability zones
}

variable "private_subnets" {
  description = "The CIDR blocks for the private subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"] # Replace with your desired private subnet CIDR ranges
}

variable "public_subnets" {
  description = "The CIDR blocks for the public subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"] # Replace with your desired public subnet CIDR ranges
}

variable "public_ami" {
  description = "The AMI ID for the public EC2 instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0" # Replace with your desired public EC2 AMI ID
}

variable "private_ami" {
  description = "The AMI ID for the private EC2 instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0" # Replace with your desired private EC2 AMI ID
}

variable "instance_type" {
  description = "The instance type for EC2 instances"
  type        = string
  default     = "t2.micro" # Replace with your desired instance type
}
