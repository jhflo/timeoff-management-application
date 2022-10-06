terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = var.aws_key
  secret_key = var.aws_secret
}


resource "aws_vpc" "test_1" {
  cidr_block = "10.100.0.0/16"
}
