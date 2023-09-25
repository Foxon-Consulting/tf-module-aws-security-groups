locals {
  # full_name = "${var.client}-${var.app}-${var.environment}"

  ec2_sg_name = "${var.prefix}-ec2-sg"
  rds_sg_name = "${var.prefix}-rds-sg"
  efs_sg_name = "${var.prefix}-efs-sg"

}

// create security group for EC2 instances
resource "aws_security_group" "ec2" {
  name        = local.ec2_sg_name
  description = "public security group for EC2 instances"
  vpc_id      = var.vpc_id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.ec2_ssh_cidr_blocks
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.ec2_http_https_cidr_blocks
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = var.ec2_http_https_cidr_blocks
  }
  ingress {
    // Only use when the db is local to the ec2 instance
    from_port   = var.rds_port
    to_port     = var.rds_port
    protocol    = "tcp"
    cidr_blocks = var.ec2_db_cidr_blocks
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] // allow all traffic to anywhere
  }
  tags = merge(var.tags,
    {
      Name = local.ec2_sg_name
    }
  )
}


// create security group for RDS instances
resource "aws_security_group" "rds" {
  name        = local.rds_sg_name
  description = "private security group for RDS instances"
  vpc_id      = var.vpc_id

  ingress {
    from_port       = var.rds_port
    to_port         = var.rds_port
    protocol        = "tcp"
    security_groups = [aws_security_group.ec2.id] // allow traffic from public security group
    cidr_blocks     = var.rds_debug_cidr_blocks
  }
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    security_groups = [aws_security_group.ec2.id] // allow all traffic to public security group
  }
  tags = merge(var.tags,
    {
      Name = local.rds_sg_name
    }
  )
}


// create security group for EFS instances
resource "aws_security_group" "efs" {
  name        = local.efs_sg_name
  description = "private security group for EFS instances"
  vpc_id      = var.vpc_id
  ingress {
    from_port       = var.efs_port
    to_port         = var.efs_port
    protocol        = "tcp"
    security_groups = [aws_security_group.ec2.id] // allow traffic from public security group
    cidr_blocks     = var.efs_debug_cidr_blocks
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] // allow all traffic to anywhere
  }
  tags = merge(var.tags,
    {
      Name = local.efs_sg_name
    }
  )
}
