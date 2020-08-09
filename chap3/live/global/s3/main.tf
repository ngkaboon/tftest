provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {}
}
resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-up-and-running-ngkaboon"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = false
  }
}


