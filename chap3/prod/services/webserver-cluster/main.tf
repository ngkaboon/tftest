provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {}
}

module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"

  cluster_name           = "webservers-prod"
  db_remote_state_bucket = "terraform-up-and-running-ngkaboon"
  db_remote_state_key    = "prod/data-stores/mysql/terraform.tfstate"
}

