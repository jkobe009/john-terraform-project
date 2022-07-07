# configure the aws provider
provider "aws" {
  region = "us-east-1"
  profile = "terraform-user"
}

# stores the terraform state file in s3
terraform {
  backend "s3" {
    bucket = "jupiter-terraform-bucket"
    key    = "terraform.tf.dev"
    region = "us-east-1"
    profile = "terraform-user"
  }
}