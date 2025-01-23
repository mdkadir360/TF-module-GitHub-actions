variable "subnet" {
    type = map(object({
        name                 = string
        resource_group_name  = string
        virtual_network_name = string
        address_prefixes     = list(string)
    }))
    default = {
        subnet1 = {
            name                 = "my-test-subnet"
            resource_group_name  = "my-test-rg"
            virtual_network_name = "my-test-vnet"
            address_prefixes     = ["10.0.2.0/24"]

}}
}