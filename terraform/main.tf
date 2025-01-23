module "Rgs" {
  source = "./Module/Resource_group"
  rg     = var.rg
}

module "vnet" {
  source     = "./Module/Virtual_Network"
  vnet       = var.vnet
  depends_on = [module.Rgs]
}
module "subnet" {
  source     = "./Module/Subnet"
  subnet     = var.subnet
  depends_on = [module.vnet]
}
module "pip" {
  source     = "./Module/Public_Ip"
  pip        = var.pip
  depends_on = [module.Rgs]
}
module "nic" {
  source     = "./Module/Nic"
  nic        = var.nic
  depends_on = [module.Rgs, module.subnet, module.vnet, module.pip]
}
module "nsg" {
  source     = "./Module/Nsg"
  nsg        = var.nsg
  security   = var.security
  depends_on = [module.Rgs]
}

module "nsgass" {
  source      = "./Module/Nsg-Assossiation"
  association = var.associationm
  depends_on  = [module.nsg, module.subnet]
}
module "linux_vm" {
  source     = "./Module/Linux_vm"
  vm         = var.linux_vm
  depends_on = [module.Rgs, module.nic, module.pip, module.subnet, module.nsgass]
}

module "windows_vm" {
  source     = "./Module/Windows_vm"
  windows-vm = var.windows_vm
  depends_on = [module.Rgs, module.nic, module.pip, module.subnet, module.nsgass]
}
