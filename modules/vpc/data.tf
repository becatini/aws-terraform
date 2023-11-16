/* Data sources allow Terraform to use information defined outside of Terraform, 
   defined by another separate Terraform configuration, or modified by functions. */

# All the AZs with the state "available" will be given through this data section
data "aws_availability_zones" "available" {
    state = "available"
}