output "ip_public_vm" {
  value = azurerm_linux_virtual_machine.terra_vm.public_ip_address
}
