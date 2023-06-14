terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
 }

provider "aws" {
  region     = "us-west-1"
  access_key = "YOUR_AWS_ACCESS_KEY"
  secret_access_key = "YOUR_AWS_SECRET_ACCESS_KEY"
}

  backend "s3" {
           bucket         = "my-terraform-state-bucket"
           key            = "terraform.tfstate"
           region         = "us-west-1"
           dynamodb_table = "my-terraform-lock-table"
  }
}
