provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  ami                    = "ami-0b5794cc5d751f003"
  instance_type          = "t4g.small"
  availability_zone      = "ap-south-1b"
  monitoring             = true
  name                   = "pgsawstest1b" 

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

module "ec2_instance1" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  ami                    = "ami-0b5794cc5d751f003"
  instance_type          = "t4g.small"
  availability_zone      = "ap-south-1c"
  monitoring             = true
  name                   = "pgsawstest1c"
  vpc_security_group_ids = ["sg-02762bdd8a3c88557", "sg-0db0dc9ef7a02ba3f"]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}