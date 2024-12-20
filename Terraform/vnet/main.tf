
provider "azurerm" {
  features {}
}

module "vnet" {
  source = "Azure/avm-res-network-virtualnetwork/azurerm"

  name     = var.name
  location = var.location
}
