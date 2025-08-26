terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.22.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "acme" {
  name         = "nginx:1.23.4"
  keep_locally = true
}

resource "docker_container" "acme" {
  name  = "tf-test"
  image = docker_image.acme.image_id

  dynamic "upload" {
    for_each = var.upload_content
    iterator = item
    content {
      content    = item.value.content
      file       = item.value.file
      executable = item.value.executable
    }
  }
}

variable "upload_content" {
  description = "list of file data to upload into containers"
  type = list(object({
    content    = string
    file       = string
    executable = bool
  }))
}
