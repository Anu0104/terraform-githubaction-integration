data "azurerm_platform_image" "ubuntu" {
  location  = var.vnetLocation
  publisher = "Canonical"
  offer     = "UbuntuServer"
  sku       = "18.04-LTS"
}
resource "azurerm_linux_virtual_machine" "virtualMachine" {
  resource_group_name   = var.rgName
  location              = var.vnetLocation
  name                  = var.vmName
  network_interface_ids = [var.nicCardIDForVM]
  admin_username        = var.adminUser
  size                  = var.vmSize
  os_disk {
    name                 = var.diskName
    caching              = "ReadWrite"
    storage_account_type = var.storageAccountType
  }

  source_image_reference {
    publisher = data.azurerm_platform_image.ubuntu.publisher
    offer     = data.azurerm_platform_image.ubuntu.offer
    sku       = data.azurerm_platform_image.ubuntu.sku
    version   = "latest"
  }

  admin_ssh_key {
    username   = var.adminUser
    public_key = var.adminSshKey
  }
}
