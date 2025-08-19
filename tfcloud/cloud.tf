terraform {
  cloud {

    organization = "JTK"

    workspaces {
      name = "my-example"
    }
  }
}
