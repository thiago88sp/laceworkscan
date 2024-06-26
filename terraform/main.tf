provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    storage_account_name = "tspontes7xg2dfzesta001"
    container_name       = "terraform"
    key                  = "lw.tfstate"
  }
}

resource "azurerm_resource_group" "rsg" {
  name     = "tpontes-lacework-scan"
  location = "East US"

  tags = {
    Username = "tpontes"
    Source   = "Terraform"
    Purpose = "Lacework Test"
  }
}
