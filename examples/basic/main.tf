terraform {
  required_version = ">= 1.9"
}

module "updates" {
  source = "../../"

  resource_group_name = "resource-group-name"
  location = "germanywestcentral"

  tags = {
    environment = "production"
    deployment  = "terraform"
  }
}