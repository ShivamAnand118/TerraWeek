# Define other resources and configurations

resource "aws_instance" "example_instance" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"
  tags = {
    Name = "MyInstance"
  }
}
