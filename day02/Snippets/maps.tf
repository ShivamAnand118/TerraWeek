#Maps using HCL

variable "usersage" {
  type = map(any)
  default = {
    shivam  = 20
    shubham = 19
  }
}

variable "username" {
  type = string
}

output "userage" {
  value = "My name is ${var.username} and my age is ${lookup(var.usersage, "${var.username}")}"
}
