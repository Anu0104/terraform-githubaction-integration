output "vnetIDs" {
  description = "Virtual network ID"
  value       = azurerm_virtual_network.virtualNetwork.*.id
}

output "vnetLocation" {
  description = "Location for virtual network"
  value       = var.vnetLocation
}
output "subnetIDs" {
  description = "Subnet IDs"
  value       = azurerm_subnet.subnets.*.id
}

output "publicIPs" {
  description = "Public IP IDs"
  value       = azurerm_public_ip.publicIP.*.id
}

output "nicCardIDs" {
  description = "Network interface card IDs"
  value       = azurerm_network_interface.networkInterfaceCard.*.id
}

output "firstNicCardID" {
  description = "First network interface card ID"
  value       = azurerm_network_interface.networkInterfaceCard[0].id
}
