provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket         = "reyts-tf-iac"
    key            = "terraform.tfstate"
    region         = "ca-central-1"
    dynamodb_table = "Reyts-tf"
  }
}
