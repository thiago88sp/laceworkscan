resource "azurerm_mysql_flexible_server" "mysql" {
  name                   = "lw-msql-001"
  resource_group_name    = azurerm_resource_group.rsg.name
  location               = azurerm_resource_group.rsg.location
  administrator_login    = "psqladmin"
  administrator_password = "H@Sh1CoR3!"
  backup_retention_days  = 1

  sku_name               = "GP_Standard_D2ds_v4"

}