output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}
output "instance_type" {
  description = "Type of the EC2 instance"
  value       = aws_instance.app_server.instance_type
}
output "instance_state" {
  description = "State of the EC2 instance"
  value       = aws_instance.app_server.instance_state
}

output "instance_arn" {
  description = "ARN of the EC2 instance"
  value       = aws_instance.app_server.arn
}
