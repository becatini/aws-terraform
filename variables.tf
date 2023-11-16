variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR Range"
}

variable "subnet_cidr" {
  description = "Subnet CIDRs"
  type = list(string)
}