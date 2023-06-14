# Configure aws provider in main.tf file

provider "aws" {
  access_key = "<your-access-key>"
  secret_access_key = "<your-secret-access-key>"
  region = "us-west-1"  
}
