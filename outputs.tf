output "security_group_ec2_id" {
  value       = aws_security_group.ec2.id
  description = "value of web security group id"
}

output "security_group_rds_id" {
  value       = aws_security_group.rds.id
  description = "value of rds security group id"
}

output "security_group_efs_id" {
  value       = aws_security_group.efs.id
  description = "value of efs security group id"
}

output "security_group_ec2_arn" {
  value       = aws_security_group.ec2.arn
  description = "value of web security group arn"
}
output "security_group_rds_arn" {
  value       = aws_security_group.rds.arn
  description = "value of rds security group arn"
}

output "security_group_efs_arn" {
  value       = aws_security_group.efs.arn
  description = "value of efs security group arn"
}
