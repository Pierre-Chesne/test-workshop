variable "azureRegion" {
  description = "Azure Region where to deploy resources. Caution the region must support Availability Zone"
  default = "westeurope"
}

variable "resourceGroupName" {
  type    = string
  default = "RG-DemoGitHub"
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

