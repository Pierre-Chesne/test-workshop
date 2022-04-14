#  Resource Group Name
variable "resourceGroupName" {
  type    = string
  default = "RG-Runner"
}

variable "azureRegion" {
  type    = string
  default = "eastus2"
}

variable "vnetName" {
  type    = string
  default = "Vnet-Runner"
}

variable "subnetName" {
  type    = string
  default = "Subnet-Runner"
}

variable "nicName" {
  type    = string
  default = "Nic-1"

}

variable "publicIp" {
  type    = string
  default = "publicIp"

}

variable "vmName" {
  type    = string
  default = "VM-Runner-0"
}

# az vm list-skus -l westus
variable "vmSize" {
  type    = string
  default = "Standard_B2ms"
}

variable "vmUser" {
  type    = string
  default = "adminuser"
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
