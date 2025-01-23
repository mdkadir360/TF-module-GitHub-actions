resource "azurerm_subnet_network_security_group_association" "nsgassosiationblock" {
  for_each                  = var.association
  subnet_id                 = data.azurerm_subnet.subnetdata[each.key].id
  network_security_group_id = data.azurerm_network_security_group.nsgdata[each.key].id
}
