module "rgModule" {
  source     = "./modules/resourceGroupModule"
  rgLocation = var.rgLocation
  rgName     = var.rgName
}
module "networkModule" {
  source                  = "./modules/networkModule"
  rgName                  = module.rgModule.resourceGroupName
  rgLocation              = module.rgModule.resourceGroupLocation
  vnetCidr                = var.vnetCidr
  vnetLocation            = var.vnetLocation
  subnetCidr              = var.subnetCidr
  publicIPCount           = var.publicIPCount
  publicIPAllocatedMethod = var.publicIPAllocatedMethod
  ipSKU                   = var.ipSKU
  nicCardCount            = var.nicCardCount
  privateIPAllocation     = var.privateIPAllocation
}
module "computeModule" {
  source                 = "./modules/computeModule"
  rgName                 = module.rgModule.resourceGroupName
  rgLocation             = module.rgModule.resourceGroupLocation
  vnetLocation           = module.networkModule.vnetLocation
  vmName                 = var.vmName
  adminUser              = var.adminUser
  computerName           = var.computerName
  diskName               = var.diskName
  vmSize                 = var.vmSize
  storageAccountType     = var.storageAccountType
  nicCardIDForVM         = module.networkModule.nicCardIDs[0]
  adminSshKey            = var.adminSshKey
}
