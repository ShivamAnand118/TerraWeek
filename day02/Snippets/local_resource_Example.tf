resource "local_file" "file_temp"{
    filename="demo.txt"
    content="This is an example of local resource"
}

resource "random_string" "random"{
    length=15
}

output "random_string"{
    value=random_string.random[*].result
}
