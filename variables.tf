variable "group_name" {
  type = "string"
  description = "name of the security group"
  default = "test-security-group"
}

variable "group_description" {
  type = "string"
  description = "description of the group"
  default = "test-description"
}

variable "private_subnets" {
  default = "10.0.0.192/26"
}

variable "public_subnets" {
  default = "10.0.0.128/26"
}