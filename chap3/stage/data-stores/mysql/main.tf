provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {}
}

module "mysql" {
  source       = "../../../modules/data-stores/mysql"
  cluster_name = "webservers_stage"
  db_password  = var.db_password
}
