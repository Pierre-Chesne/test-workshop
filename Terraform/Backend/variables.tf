variable "azureRegion" {
  type        = string
  default     = "westeurope"
}

variable "resourceGroupName" {
  type    = string
  default = "RG-Backend-Terraform"
}

variable "storageAccountBackendTerraform" {
  type = string
  default = "storagebeterraform"
}

variable "AzureSubscriptionID" {
  type = string
}

variable "AzureClientSecret" {
  type = string
}

variable "AzureClientID" {
  type = string
}

variable "AzureTenandID" {
  type = string
}