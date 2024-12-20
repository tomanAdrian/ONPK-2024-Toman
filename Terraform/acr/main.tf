
provider "azurerm" {
  features {}
}

module "acr" {
  source = "Azure/avm-res-containerregistry-registry/azurerm"

  name     = var.name
  location = var.location
}
