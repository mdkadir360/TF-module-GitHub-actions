data "azurerm_network_interface" "nicdata" {
  for_each = var.vm
   name                = each.value.nicname
  resource_group_name = each.value.resource_group_name
}
# data "azurerm_key_vault" "secret" {
#   name                = "Kadirkeyvault"
#   resource_group_name = "kadir_key_vault-rg"
# }
# data "azurerm_key_vault_secret" "username" {
#   name         = "username"
#   key_vault_id = data.azurerm_key_vault.secret.id
# }
# data "azurerm_key_vault_secret" "password" {
#   name         = "password"
#   key_vault_id = data.azurerm_key_vault.secret.id
# }