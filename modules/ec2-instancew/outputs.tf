output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.practical.id
}

output "security_group_id" {
  value = aws_security_group.ec2_sg.id
}
