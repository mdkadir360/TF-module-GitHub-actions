data "azurerm_network_interface" "nicdata" {
  for_each            = var.windows-vm
  name                = each.value.nicname
  resource_group_name = each.value.resource_group_name
}
