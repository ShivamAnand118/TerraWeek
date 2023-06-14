# Define provider for AWS
provider "aws" {
  region = "us-west-2"
}

# Define resource for EC2 instance
resource "aws_instance" "example" {
  ami           = "<Your EC2 Instance AMI>"
  instance_type = "t2.micro"
  key_name      = "my-key"

  tags = {
    Name = "example-instance"
  }
}
