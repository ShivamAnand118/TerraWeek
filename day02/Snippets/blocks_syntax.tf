# Terraform Block
 terraform {
   required_providers {
     aws = {
       source  = "hashicorp/aws"
       version = "~> 2.0"
     }
   }
   required_version = ">= 1.0.1"
 }


# Provider

 provider "aws"{}

#Resource

 resource "aws_instance" "example_resource" {
   ami           = "ami-005e54dee72cc1d00" 
   instance_type = "t2.micro"
   }


#Variable

 variable "example_variable" {
   type = var_type
   description = var_description 
   default = value_1 
 }


#locals
 locals {
   service_name = "forum"
   owner        = "Community Team"
   instance_ids = concat(aws_instance.blue.*.id, aws_instance.green.*.id)
 }

# Data

 data "data_type" "data_name" {
   variable_1 = expression
 }


