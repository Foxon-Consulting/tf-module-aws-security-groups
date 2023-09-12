# tf-module-security-groups
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.16.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_security_group.ec2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.efs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.rds](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_client_name"></a> [client\_name](#input\_client\_name) | Client Name | `string` | n/a | yes |
| <a name="input_ec2_db_cidr_blocks"></a> [ec2\_db\_cidr\_blocks](#input\_ec2\_db\_cidr\_blocks) | Debug CIDR Blocks | `list(string)` | <pre>[<br>  "0.0.0.0/32"<br>]</pre> | no |
| <a name="input_ec2_http_https_cidr_blocks"></a> [ec2\_http\_https\_cidr\_blocks](#input\_ec2\_http\_https\_cidr\_blocks) | HTTP and HTTPS CIDR Blocks | `list(string)` | <pre>[<br>  "0.0.0.0/32"<br>]</pre> | no |
| <a name="input_ec2_sg_name"></a> [ec2\_sg\_name](#input\_ec2\_sg\_name) | EC2 Security Group Name | `string` | n/a | yes |
| <a name="input_ec2_ssh_cidr_blocks"></a> [ec2\_ssh\_cidr\_blocks](#input\_ec2\_ssh\_cidr\_blocks) | SSH CIDR Blocks | `list(string)` | <pre>[<br>  "0.0.0.0/32"<br>]</pre> | no |
| <a name="input_efs_debug_cidr_blocks"></a> [efs\_debug\_cidr\_blocks](#input\_efs\_debug\_cidr\_blocks) | Debug CIDR Blocks | `list(string)` | <pre>[<br>  "0.0.0.0/32"<br>]</pre> | no |
| <a name="input_efs_port"></a> [efs\_port](#input\_efs\_port) | EFS Port | `number` | `2049` | no |
| <a name="input_efs_sg_name"></a> [efs\_sg\_name](#input\_efs\_sg\_name) | EFS Security Group Name | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment | `string` | n/a | yes |
| <a name="input_rds_debug_cidr_blocks"></a> [rds\_debug\_cidr\_blocks](#input\_rds\_debug\_cidr\_blocks) | Debug CIDR Blocks | `list(string)` | <pre>[<br>  "0.0.0.0/32"<br>]</pre> | no |
| <a name="input_rds_port"></a> [rds\_port](#input\_rds\_port) | RDS Port | `number` | `3306` | no |
| <a name="input_rds_sg_name"></a> [rds\_sg\_name](#input\_rds\_sg\_name) | EC2 Security Group Name | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_security_group_ec2_arn"></a> [security\_group\_ec2\_arn](#output\_security\_group\_ec2\_arn) | value of web security group arn |
| <a name="output_security_group_ec2_id"></a> [security\_group\_ec2\_id](#output\_security\_group\_ec2\_id) | value of web security group id |
| <a name="output_security_group_efs_arn"></a> [security\_group\_efs\_arn](#output\_security\_group\_efs\_arn) | value of efs security group arn |
| <a name="output_security_group_efs_id"></a> [security\_group\_efs\_id](#output\_security\_group\_efs\_id) | value of efs security group id |
| <a name="output_security_group_rds_arn"></a> [security\_group\_rds\_arn](#output\_security\_group\_rds\_arn) | value of rds security group arn |
| <a name="output_security_group_rds_id"></a> [security\_group\_rds\_id](#output\_security\_group\_rds\_id) | value of rds security group id |
<!-- END_TF_DOCS -->
