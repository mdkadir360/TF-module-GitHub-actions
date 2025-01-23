resource "azurerm_windows_virtual_machine" "vm" {
  for_each              = var.windows-vm
  name                  = each.value.name
  resource_group_name   = each.value.resource_group_name
  location              = each.value.location
  size                  = "Standard_F2"
  admin_username        = "adminuser"
  admin_password        = "adminuser@1234"
  network_interface_ids = [data.azurerm_network_interface.nicdata[each.key].id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }


  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }


}