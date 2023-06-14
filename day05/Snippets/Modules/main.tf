terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-west-1"
}

provider "azurerm" {
  features {}
}

provider "google" {
  project = "my-gcp-project"
  region  = "us-central1"
}

module "aws_ec2" {
  source         = "./path/to/aws_ec2_instance/module/directory"
  instance_name  = "my-instance"
  instance_type  = "t2.micro"
  ami_id         = "ami-0123456789"
  aws_region     = "us-west-2"
}

module "azure_resource_group" {
  source                = "./path/to/azure_resource_group/module/directory"
  resource_group_name   = "my-resource-group"
  azure_region          = "westus2"
}

module "gcp_cloud_storage" {
  source        = "./path/to/gcp_cloud_storage/module/directory"
  bucket_name   = "my-bucket"
  gcp_project   = "my-gcp-project"
  gcp_region    = "us-central1"
}
