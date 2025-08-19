terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.1.1"
    }
  }
}

provider "null" {}

resource "null_resource" "previous" {
  provisioner "local-exec" {
    command = "echo 'foo' > file.txt"
  }
}
resource "null_resource" "next" {
  depends_on = [time_sleep.wait_30_seconds]
}

resource "time_sleep" "wait_30_seconds" {
  depends_on       = [null_resource.previous]
  create_duration  = "20s"
  destroy_duration = "10s"
}
resource "null_resource" "my_initials" {
  provisioner "local-exec" {
    command = "echo 'JTK' > file2.txt"
  }
}
