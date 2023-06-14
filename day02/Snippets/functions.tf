
#Fuctions using HCL

variable "users" {
  type    = list(any)
  default = ["Shivam", "Shubham", "Anand"]
}

output "func_example" {
  value = join(",", var.users)
}

output "toUpper" {
  value = upper(var.users[0])
}
