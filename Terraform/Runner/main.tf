data "terraform_remote_state" "terra_datasource_vm" {
  backend = "azurerm"

  config = {
    resource_group_name  = "RG-Backend-Terraform"
    storage_account_name = "storagebeterraform"
    container_name       = "tfstate"
    key                  = "vm.terraform.tfstate"
  }
}

resource "azurerm_virtual_machine_extension" "terra_custom_script" {
  name                 = "Github-Runner"
  virtual_machine_id   = data.terraform_remote_state.terra_datasource_vm.virtual_machine_id
  publisher            = "Microsoft.Azure.Extensions"
  type                 = "CustomScript"
  type_handler_version = "2.0"

  settings = <<SETTINGS
    {
      "commandToExecute": "sh runner.sh",
      "fileUris": [
         "${var.fileUris}"
      ]
    }
SETTINGS
}