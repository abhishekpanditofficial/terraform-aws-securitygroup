output "vpc_id" {
    value= module.terraform_aws_securityGroup.vpc_id
}
output "vpc_cidr_block" {
    value= module.terraform_aws_securityGroup.vpc_cidr_block
}
output "security_group_arn" {
    value= module.terraform_aws_securityGroup.security_group_arn
}
output "security_vpc_id" {
    value= module.terraform_aws_securityGroup.security_vpc_id
}