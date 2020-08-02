provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket  = "terraform-up-and-running-ngkaboon"
    region  = "us-east-1"
    key     = "terraform.tfstate"
    encrypt = true
  }
}
resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-up-and-running-ngkaboon"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}


output "s3_bucket_arn" {
  value = aws_s3_bucket.terraform_state.arn
}
