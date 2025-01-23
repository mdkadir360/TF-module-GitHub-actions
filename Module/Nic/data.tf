data "azurerm_subnet" "subnetdata" {
  for_each             = var.nic
  name                 = each.value.subnetname
  virtual_network_name =each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}
data "azurerm_public_ip" "ipdata" {
 for_each            = var.nic
 name                = each.value.ipname
 resource_group_name = each.value.resource_group_name
}
