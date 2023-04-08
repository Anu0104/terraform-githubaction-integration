resource "azurerm_network_security_group" "networkSecurityGroup" {
  resource_group_name = var.rgName
  location            = var.vnetLocation
  count               = length(var.subnetCidr)
  name                = "nsgForSubnet_${count.index + 1}"

}

resource "azurerm_network_security_rule" "nsgRulesForSubnet1" {
  resource_group_name         = var.rgName
  for_each                    = local.nsgPortForSubnet1
  name                        = "ruleFor_${each.value.destination_port_range}"
  priority                    = each.value.priority
  direction                   = "Inbound"
  access                      = each.value.access
  protocol                    = each.value.protocol
  source_port_range           = "*"
  destination_port_range      = each.value.destination_port_range
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  network_security_group_name = azurerm_network_security_group.networkSecurityGroup[0].name
}

resource "azurerm_subnet_network_security_group_association" "nsgSubnetAssociation" {
  count                     = length(var.subnetCidr)
  subnet_id                 = azurerm_subnet.subnets[count.index].id
  network_security_group_id = azurerm_network_security_group.networkSecurityGroup[count.index].id
}
