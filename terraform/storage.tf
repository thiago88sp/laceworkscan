resource "azurerm_storage_account" "storage_account" {
  name                     = "tsplwstorage001"
  resource_group_name      = azurerm_resource_group.rsg.name
  location                 = azurerm_resource_group.rsg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Username = "tpontes"
    Source   = "Terraform"
    Purpose = "Lacework Test"
  }
}