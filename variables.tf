variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "client_name" {
  description = "Client Name"
  type        = string
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "ec2_sg_name" {
  description = "EC2 Security Group Name"
  type        = string
}

variable "ec2_ssh_cidr_blocks" {
  description = "SSH CIDR Blocks"
  type        = list(string)
  default     = ["0.0.0.0/32"]
}

variable "ec2_http_https_cidr_blocks" {
  description = "HTTP and HTTPS CIDR Blocks"
  type        = list(string)
  default     = ["0.0.0.0/32"]
}

variable "ec2_db_cidr_blocks" {
  description = "Debug CIDR Blocks"
  type        = list(string)
  default     = ["0.0.0.0/32"]
}

variable "rds_sg_name" {
  description = "EC2 Security Group Name"
  type        = string
}

variable "rds_debug_cidr_blocks" {
  description = "Debug CIDR Blocks"
  type        = list(string)
  default     = ["0.0.0.0/32"]
}

variable "rds_port" {
  description = "RDS Port"
  type        = number
  default     = 3306
}

variable "efs_sg_name" {
  description = "EFS Security Group Name"
  type        = string
}

variable "efs_debug_cidr_blocks" {
  description = "Debug CIDR Blocks"
  type        = list(string)
  default     = ["0.0.0.0/32"]
}

variable "efs_port" {
  description = "EFS Port"
  type        = number
  default     = 2049
}
