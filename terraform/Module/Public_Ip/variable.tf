variable "pip" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    allocation_method   = string
    sku                 = string
  }))
  default = {
    pip1 = {
      name                = "my-test-pip"
      location            = "East US"
      resource_group_name = "my-test-rg"
      allocation_method   = "Static"
      sku                 = "Standard"
    }
  }
}