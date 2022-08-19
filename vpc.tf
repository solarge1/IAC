resource "aws_vpc" "my_app" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "default"

  tags = {
    Name        = "ReytsVPC"
    Environment = "${terraform.workspace}"
  }
}

terraform {
  cloud {
    organization = "Reyts"

    workspaces {
      name = "example-workspace"
    }
  }
}