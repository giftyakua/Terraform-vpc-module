hcl
aws_region           = "us-west-2"
vpc_name             = "MainVPC"
vpc_cidr             = "10.0.0.0/16"
vpc_availability_zones = ["us-west-2a", "us-west-2b"]
private_subnets      = ["10.0.1.0/24", "10.0.2.0/24"]
public_subnets       = ["10.0.3.0/24", "10.0.4.0/24"]
enable_nat_gateway   = true
public_ami           = "ami-0123456789abcdef0"
private_ami          = "ami-0123456789abcdef0"
instance_type        = "t2.micro"
