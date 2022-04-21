terraform {
  required_version = ">= 1.1.7"
  backend "azurerm" {
    resource_group_name  = "RG-Backend-Terraform"
    storage_account_name = "storagebeterraform"
    container_name       = "tfstate"
    key                  = "runner.terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 2.98.0"
    }
  }
}

provider "azurerm" {
  features {}

}