module "aws-ac-1234567890" {
  source = "terraform-aws-modules/vpc/aws"

  name = "aws-dev"
  cidr = "10.8.0.0/16"

  azs             = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
  private_subnets = ["10.8.1.0/24", "10.8.2.0/24", "10.8.3.0/24"]
  public_subnets  = ["10.8.101.0/24", "10.8.102.0/24", "10.8.103.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "uat"
  }
}