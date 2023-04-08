// Variables For Resource Group Module
variable "rgName" {
  description = "Resource group names"
  type        = string
  default = "tfGithubAction"
}
variable "rgLocation" {
  description = "Resource group locations"
  type        = string
  default = "East US"
}

// Variables For Network Module
variable "vnetCidr" {
  description = "cidr for virtual network"
  type        = string
  default = "10.0.0.0/16" 
}
variable "vnetLocation" {
  description = "Virtual network location"
  type        = string
  default = "East US"
}
variable "subnetCidr" {
  description = "cidr for subnets"
  type        = list(any)
  default = [ "10.0.1.0/24" ]
}
variable "publicIPCount" {
  description = "Public IP count"
  type        = number
  default = 1
}
variable "publicIPAllocatedMethod" {
  description = "Public IP allocation method"
  type        = string
  default = "Static"
}
variable "ipSKU" {
  description = "Public IP SKU"
  type        = string
  default = "Basic"
}
variable "nicCardCount" {
  description = "Network Interface Card Count"
  type        = number
  default = 1
}
variable "privateIPAllocation" {
  description = "Private IP allocation method"
  type        = string
  default = "Dynamic"
}

// Variables For Compute Module
variable "vmName" {
  description = "Virtual machine name"
  type        = string
  default = "githubActionOS"
}
variable "adminUser" {
  description = "User name for virtual machine"
  type        = string
  default     = "azureuser"
}
variable "computerName" {
  description = "Computer name for virtual machine"
  type        = string
  default     = "UbuntuVM"
}
variable "vmSize" {
  description = "Size for virtual machine"
  type        = string
  default = "Standard_DS1_v2"
}
variable "diskName" {
  description = "Disk name for virtual machine"
  type        = string
  default     = "OSDisk"
}
variable "storageAccountType" {
  description = "Storage account type for virtual machine"
  type        = string
  default = "Premium_LRS"
}
variable "adminSshKey" {
  description = "Ssh key for virtual machine"
  type        = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCttlKKjcoeD1le9IhcRdJdZQjI0zBhs2aTyCoM4o39H34eAbtVWgrqJYRVtUqluWlOL14SQ/apFcB/lvU2SR0kK4gXQxatK2Rc3cBGpHX5RajRwTIHEnHSTj9/PdJI8xVcQwHFmwahssZ6cmyvNPoZY/dSEVX69+fqP2+oNQfoUMo9/RIORtQFSjRiFnwpVVBqLtofTuIh2SQUcPbirwkIYkXQ11zrK7tAzL26OSma7DoXlwSfAkcLsjynG08nzQlXnsG9MNbPZPfN3VFG3ytIOSN6P9UI60F95+7SbxSjCyDB34M21UMBPCiYORUGABzs8O1j45VzixcNB3oZfp4wsrLN/ksQI9gGS6kR7UsBzx9xmA7/RqIukthsH/eU69MN/a4gRO8RXEa7SPXz2YytBrac1K+VhzMOMXy/SOlG4K470Lloo7I9wBs7u8nXgZ/CzToF0oXsp8ELxNCV8jouHW3Et8imXRgfP9fFvWGrVg8Zi6/3e4KSbh8XIUBbv1c= ubuntu@ubuntu-IdeaPad-3-15ITL6"
}
