output "all_arns" {
  value       = aws_iam_user.example[*]
  description = "The ARNS for all users"
}
