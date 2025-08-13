# produces an output value named "container_id"
output "container_id" {
  description = "ID pf the Docker container"
  value = docker_container.nginx.id
  sensitive = true
}

#produces an output value named "image_id"
output "image_id" {
  description = "ID of the Docker image"
  value = docker_image.nginx.image_id
  sensitive = true
}
