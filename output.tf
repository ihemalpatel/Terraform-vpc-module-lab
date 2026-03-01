output "instance_public_ip" {
  value       = module.vpc_ec2.instance_public_ip
  description = "Public IP of the EC2 instance"
}

output "vpc_id" {
  value = module.vpc_ec2.vpc_id
}

output "public_subnet_id" {
  value = module.vpc_ec2.public_subnet_id
}