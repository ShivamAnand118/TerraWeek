# Loops Using HCL

my_instances = {
 instance_1 = {
   ami   = "ami-00124569584abc",
   type  = "t2.micro"
 },
 instance_2 = {
   ami   = "ami-987654321xyzab",
   type  = "t2.large"
 },
}

resource "aws_instance" "test" {
 for_each = var.my_instances

 ami           = each.value["ami"]
 instance_type = each.value["type"]
}
