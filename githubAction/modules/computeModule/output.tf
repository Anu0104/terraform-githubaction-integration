output "VMpublicID" {
  description = "Public IP of virtual machine"
  value       = azurerm_linux_virtual_machine.virtualMachine.id
}
