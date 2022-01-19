# Create random password
resource "random_password" "randpass" {
   length = var.randpass_len
   lower = true
}

# Find the latest mysql image.
resource "docker_image" "mysql" {
  name = "mysql:latest"
}

# Create a container
resource "docker_container" "mysql" {
  name = var.sqlname
  image = "${docker_image.mysql.name}"
}
