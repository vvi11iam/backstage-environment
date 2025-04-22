resource "null_resource" "echo" {
 provisioner "local-exec" {
    command = "echo \"Deploying FE & BE app\"\necho \"FE image: ${var.feImage}\"\necho \"BE image: ${var.beImage}\"\necho \"FE & BE app deployed at URL: ${var.environmentUrl}\" "
  }
}
