variable "azureRegion" {
  type        = string
  default     = "westeurope"
  description = "tamere"
}

variable "resourceGroupName" {
  type    = string
  default = "RG-Test-Terraform"
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
