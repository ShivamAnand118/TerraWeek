resource "null_resource" "example" {

  # Provisioner to run during resource creation


  provisioner "local-exec" {
    command = "echo Resource created at: $(date)"
  }

  # Provisioner to run during resource destruction
  
  provisioner "local-exec" {
    when    = "destroy"
    command = "echo Resource destroyed at: $(date)"
  }
}

