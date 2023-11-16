terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.25.0"
    }
  }

   backend "s3" {
    bucket = "my-s3-bucket-for-tf-state-01"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }  
}

provider "aws" {
  region = "us-east-1"
}