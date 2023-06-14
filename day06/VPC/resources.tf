
resource "aws_vpc" "example_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Your Default Name"
  }
}

# Subnet Group
resource "aws_subnet" "example_subnet" {
  vpc_id            = aws_vpc.example_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name = "Your default name"
  }
}

#Route Table


resource "aws_route_table" "example_route_table" {
  vpc_id = aws_vpc.example_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.example_igw.id
  }

  tags = {
    Name = "Your Default Name"
  }
}


# Internet gateway
# Create an internet gateway

resource "aws_internet_gateway" "example_igw" {
  vpc_id = aws_vpc.example_vpc.id

  tags = {
    Name = "MyInternetGateway"
  }
}

# VM
# Create a VM

resource "aws_instance" "example_instance" {
  ami           = "ami-xxxxxxxx"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.example_subnet.id

  tags = {
    Name = "MyEC2Instance"
  }
}
