provider "azurerm" {
  features {

  }
  subscription_id = "7fd59e8b-ebe2-47cb-9c43-38fb4761eff1"
}
terraform {
  backend "azurerm" {
    resource_group_name  = "myrg"
    storage_account_name = "kadirstorage25"
    container_name       = "vm-container"
    key                  = "vm.terraform.tfstate"
  }
}