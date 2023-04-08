output "resourceGroupName" {
  description = "Resource group name"
  value       = azurerm_resource_group.resourceGroup.name
}

output "resourceGroupLocation" {
  description = "Resource group location"
  value       = azurerm_resource_group.resourceGroup.location
}
