terraform {
  required_version = ">= 1.8.0"
}

provider "aws" {
  region = "us-east-1"
}

module "vpc_ec2" {
  source = "./vpc_module/vpc-ec2"  # <-- path to your module

  # Module input variables
  vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
  instance_type      = "t2.micro"
  ami_id             = "ami-0abcd1234ef56789"  # replace with your AMI
  environment        = "dev"
  key_pair_name      = "nginx_hemal"

}