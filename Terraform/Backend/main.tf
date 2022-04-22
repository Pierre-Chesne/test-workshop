resource "azurerm_resource_group" "Terra_tfbackend_rg" {
  name     = var.resourceGroupName
  location = var.azureRegion
}