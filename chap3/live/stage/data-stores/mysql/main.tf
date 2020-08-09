provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {}
}

module "mysql" {
  source       = "git::git@github.com:ngkaboon/modules.git//data-stores/mysql?ref=v0.0.2"
  cluster_name = "webservers_stage"
  db_password  = var.db_password
}

output "address" {
  value = module.mysql.address
}

output "port" {
  value = module.mysql.port
}

