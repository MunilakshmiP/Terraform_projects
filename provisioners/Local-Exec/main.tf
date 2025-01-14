resource "null_resource" "local_exec_example" {
  provisioner "local-exec" {
    command = "echo 'Terraform Local-Exec is running!'"
  }
}
