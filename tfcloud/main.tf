locals {
  fellowship = ["strider", "frodo", "gandalf"]
}

resource "null_resource" "fellowship" {
  for_each = toset(local.fellowship)
  triggers = {
    name = each.value
  }
}

output "fellowship" {
  value = null_resource.fellowship
}
