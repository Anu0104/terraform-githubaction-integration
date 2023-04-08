resource "azurerm_virtual_network" "virtualNetwork" {
  resource_group_name = var.rgName
  location            = var.vnetLocation
  name                = "tfvnet"
  address_space       = [var.vnetCidr]
}

resource "azurerm_subnet" "subnets" {
  resource_group_name  = var.rgName
  virtual_network_name = azurerm_virtual_network.virtualNetwork.name
  name                 = "tfSubnet_${count.index + 1}"
  count                = length(var.subnetCidr)
  address_prefixes     = [element(var.subnetCidr, count.index)]
}
