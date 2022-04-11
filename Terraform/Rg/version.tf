terraform {
  required_version = ">= 1.1.7"
  backend "azurerm" {
    resource_group_name  = "RG-Terraform-Test"
    storage_account_name = "storagebeterraform"
    container_name       = "tfstate"
    key                  = "rg.terraform.tfstate"
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
  subscription_id = var.AzureSubscriptionID
  client_id       = var.AzureClientID
  client_secret   = var.AzureClientSecret
  tenant_id       = var.AzureTenandID
}
