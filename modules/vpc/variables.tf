variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR Range"
}

variable "subnet_cidr" {
  description = "Subnet CIDRs"
  type = list(string)
}

variable "subnet_names" {
  description = "Subnet names"
  type = list(string)
  default = [ "PublicSubnet1", "PublicSubnet2" ]
}