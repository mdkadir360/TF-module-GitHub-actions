rg = {
  rg1 = {
    name     = "my-test-rg"
    location = "east us"
  }

}

vnet = {
  vnet1 = {
    name                = "my-test-vnet"
    address_space       = ["10.0.0.0/16"]
    location            = "east us"
    resource_group_name = "my-test-rg"
  }
  vnet2 = {
    name                = "my-test-vnet2"
    address_space       = ["10.0.1.0/16"]
    location            = "east us"
    resource_group_name = "my-test-rg"
  }

}
subnet = {
  subnet1 = {
    name                 = "my-test-subnet"
    resource_group_name  = "my-test-rg"
    virtual_network_name = "my-test-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }


}
pip = {
  pip1 = {
    name                = "my-test-pip"
    resource_group_name = "my-test-rg"
    location            = "east us"
    allocation_method   = "Static"
    sku                 = "Basic"
  }
  pip2 = {
    name                = "my-test-pip2"
    resource_group_name = "my-test-rg"
    location            = "east us"
    allocation_method   = "Static"
    sku                 = "Basic"
  }


}


nic = {
  nic1 = {
    name                 = "my-test-nic1"
    location             = "east us"
    resource_group_name  = "my-test-rg"
    virtual_network_name = "my-test-vnet"
    subnetname           = "my-test-subnet"
    ipname               = "my-test-pip"
  }
  nic2 = {
    name                 = "my-test-nic2"
    location             = "east us"
    resource_group_name  = "my-test-rg"
    virtual_network_name = "my-test-vnet"
    subnetname           = "my-test-subnet"
    ipname               = "my-test-pip2"
  }


}
nsg = {
  nsg1 = {
    name                = "vm-nsg01"
    location            = "east us"
    resource_group_name = "my-test-rg"
  }

}

security = {
  rule1 = {
    name                       = "ssh_access"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }



}

associationm = {
  association1 = {
    name                 = "nsg-association"
    nsgname              = "vm-nsg01"
    resource_group_name  = "my-test-rg"
    subnatname           = "my-test-subnet"
    virtual_network_name = "my-test-vnet"
  }
}

linux_vm = {
  vm01 = {
    name                = "Linux-VM"
    location            = "eastus"
    resource_group_name = "my-test-rg"
    nicname             = "my-test-nic1"
  }
}

windows_vm = {
  vm02 = {
    name                = "Windows-VM"
    location            = "eastus"
    resource_group_name = "my-test-rg"
    nicname             = "my-test-nic2"
  }
}
