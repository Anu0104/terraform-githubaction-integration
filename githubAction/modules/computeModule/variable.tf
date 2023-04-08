variable "rgName" {
  description = "Resource group names"
  type        = string
}
variable "rgLocation" {
  description = "Resource group locations"
  type        = string
}
variable "vnetLocation" {
  description = "Virtual network location"
  type        = string
}
variable "nicCardIDForVM" {
  description = "Network interface card ID for virtual machine"
  type        = string
}
variable "vmName" {
  description = "Virtual machine name"
  type        = string
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
}
variable "diskName" {
  description = "Disk name for virtual machine"
  type        = string
  default     = "OSDisk"
}
variable "storageAccountType" {
  description = "Storage account type for virtual machine"
  type        = string
}
variable "adminSshKey" {
  description = "Ssh key for virtual machine"
  type        = string
}
