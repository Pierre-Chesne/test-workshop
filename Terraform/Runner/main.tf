data "terraform_remote_state" "Terra-datasource-acr" {
  backend = "azurerm"
  
  config = {
    resource_group_name  = "RG-Backend-Terraform"    # mettre ici le nom du resource group de vos ressource
    storage_account_name = "storagebeterraform" # mettre le nom du compte de stockage créer dans le lab 1
    container_name       = "tfstate"
    key                  = "vm.terraform.tfstate"
  }
}

resource "azurerm_virtual_machine_extension" "terra_custom_script" {
  name                 = "Github-Runner"
  virtual_machine_id   = azurerm_linux_virtual_machine.terra_vm.id
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