# see https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip
resource "azurerm_public_ip" "main" {
  name                = "${local.upstream_name}-packer"
  location            = local.upstream_location
  resource_group_name = local.upstream_name
  allocation_method   = "Static"
}

# see https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network
resource "azurerm_virtual_network" "main" {
  name                = "${local.upstream_name}-network"
  address_space       = ["10.0.0.0/16"]
  location            = local.upstream_location
  resource_group_name = local.upstream_name
}

# see https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet
resource "azurerm_subnet" "internal" {
  name                 = "internal"
  resource_group_name  = local.upstream_name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.2.0/24"]
}

# see https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface
resource "azurerm_network_interface" "main" {
  name                = "${local.upstream_name}-nic"
  location            = local.upstream_location
  resource_group_name = local.upstream_name

  ip_configuration {
    name                          = "${local.upstream_name}-config"
    subnet_id                     = azurerm_subnet.internal.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.main.id
  }
}

