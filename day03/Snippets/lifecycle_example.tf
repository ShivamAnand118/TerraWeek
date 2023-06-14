resource "aws_instance" "example" {
  ami           = "<Your EC2 Instance AMI Here>"
  instance_type = "t2.micro"
  key_name      = "my-key"

  tags = {
    Name = "example-instance"
  }

  lifecycle {
    create_before_destroy = true
    ignore_changes        = ["tags"]
    prevent_destroy       = false
  }
}
