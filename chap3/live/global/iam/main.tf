#resource "aws_iam_user" "example" {
#  count = "${length(var.usernames)}"
#  name = "${element(var.user_names, count.index}"
#}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {}
}

resource "aws_iam_user" "example" {
  count = 3
  name  = "neo.${count.index}"
}
