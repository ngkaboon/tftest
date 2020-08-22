provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {}
}

module "webserver_cluster" {
  source = "../../../../modules/services/webserver-cluster"

  ami                    = "ami-40d28157"
  server_text            = "Newer Server text"
  cluster_name           = "webservers-prod"
  db_remote_state_bucket = "terraform-up-and-running-ngkaboon"
  db_remote_state_key    = "prod/data-stores/mysql/terraform.tfstate"

  instance_type      = "t2.micro"
  min_size           = 2
  max_size           = 10
  enable_autoscaling = false

}


