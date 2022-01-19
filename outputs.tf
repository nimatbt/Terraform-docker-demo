output "randpass" {
  value = random_password.randpass.result
  sensitive = true
}

#Output mysql container id
output "docker_id_info" {
  value = docker_container.mysql.id
}

#Output mysql container name
output "docker_name_info" {
  value = docker_container.mysql.name
}

#Output mysql container ip address
output "docker_ip_info" {
  value = docker_container.mysql.ip_address
}
