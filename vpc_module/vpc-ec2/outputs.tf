output "instance_public_ip" {
  value       = aws_instance.web_server.public_ip
  description = "Public IP of the EC2 instance"
}

output "vpc_id" {
  value       = aws_vpc.my_vpc.id
}

output "public_subnet_id" {
  value       = aws_subnet.public_subnet.id
}