
variable "rgName" {
  description = "Resource group names"
  type        = string
}
variable "rgLocation" {
  description = "Resource group locations"
  type        = string
}

// Variables For Network Module
variable "vnetCidr" {
  description = "cidr for virtual network"
  type        = string
}
variable "vnetLocation" {
  description = "Virtual network location"
  type        = string
}
variable "subnetCidr" {
  description = "cidr for subnets"
  type        = list(any)
}
variable "publicIPCount" {
  description = "Public IP count"
  type        = number
}
variable "publicIPAllocatedMethod" {
  description = "Public IP allocation method"
  type        = string
}
variable "ipSKU" {
  description = "Public IP SKU"
  type        = string
}
variable "nicCardCount" {
  description = "Network Interface Card Count"
  type        = number
}
variable "privateIPAllocation" {
  description = "Private IP allocation method"
  type        = string
}
