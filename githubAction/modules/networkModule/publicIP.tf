resource "azurerm_public_ip" "publicIP" {
  location            = var.vnetLocation
  resource_group_name = var.rgName
  count               = var.publicIPCount
  name                = "tfPublicIP_${count.index + 1}"
  allocation_method   = var.publicIPAllocatedMethod
  sku                 = var.ipSKU
}
