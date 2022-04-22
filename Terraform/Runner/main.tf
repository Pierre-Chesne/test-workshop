data "terraform_remote_state" "terra_datasource_vm" {
  backend = "azurerm"

  config = {
    resource_group_name  = "RG-Backend-Terraform"
    storage_account_name = "storagebeterraform"
    container_name       = "tfstate"
    key                  = "vm.terraform.tfstate"
  }
}

resource "azurerm_resource_group" "terra_rg_test" {
  name = "rg-test"
  location = "westeurope"
  
}

