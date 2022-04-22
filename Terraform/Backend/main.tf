resource "azurerm_resource_group" "Terra_tfbackend_rg" {
  name     = var.resourceGroupName
  location = var.azureRegion
}

resource "azurerm_storage_account" "Terra_Storage_Backend" {
  name                      = var.storageAccountBackendTerraform
  resource_group_name       = azurerm_resource_group.Terra_tfbackend_rg.name
  location                  = azurerm_resource_group.Terra_tfbackend_rg.location
  account_tier              = "Standard"
  account_replication_type  = "GRS"
  account_kind              = "StorageV2"
  enable_https_traffic_only = true
}

resource "azurerm_storage_container" "Terra_Container_Storage" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.Terra_Storage_Backend.name
  container_access_type = "private"
}