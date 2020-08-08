provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {}
}

module "mysql" {
  source       = "../../../modules/data-stores/mysql"
  cluster_name = "webservers_prod"
  db_password  = var.db_password
}

output "address" {
  value = module.mysql.address
}

output "port" {
  value = module.mysql.port
}

