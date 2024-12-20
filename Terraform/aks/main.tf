
provider "azurerm" {
  features {}
}

module "aks" {
  source = "hashicorp/azurerm//kubernetes_cluster"

  name     = var.name
  location = var.location
}
