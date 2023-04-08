resource "azurerm_network_interface" "networkInterfaceCard" {
  resource_group_name = var.rgName
  location            = var.vnetLocation
  count               = var.nicCardCount
  name                = "vm_${count.index + 1}_nic"


  ip_configuration {
    name                          = "ipConfigForVM_${count.index + 1}"
    subnet_id                     = element(azurerm_subnet.subnets.*.id, count.index)
    private_ip_address_allocation = var.privateIPAllocation
    public_ip_address_id          = element(azurerm_public_ip.publicIP.*.id, count.index)
  }
}
