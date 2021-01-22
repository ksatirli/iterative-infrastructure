# find the freshly baked image using the AzureRM Image data source
# see https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/image
data "azurerm_image" "packer" {
  name                = "packer"
  resource_group_name = local.upstream_name
}

# create an Azure Linux Virtual Machine with the freshly baked Packer image
# see https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine
resource "azurerm_linux_virtual_machine" "main" {
  name                  = "${local.upstream_name}-vm"
  location              = local.upstream_location
  resource_group_name   = local.upstream_name
  network_interface_ids = [azurerm_network_interface.main.id]
  size                  = "Standard_D2_v2"

  admin_username = "adminuser"

#  admin_ssh_key {
#    username = "adminuser"
#    # This uses YOUR local public key and therefore requires YOUR private key for SSH
#    public_key = file("~/.ssh/id_rsa.pub")
#  }

  admin_password = "passwordTaylordoesntknow!"

  source_image_id = data.azurerm_image.packer.id

  os_disk {
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }
}

locals {
  vm_public_ip = azurerm_linux_virtual_machine.main.public_ip_address
}

output "vm_public_ip" {
  description = "Public IP Address of Azure Linux VM"
  value       = local.vm_public_ip
}

output "ssh_connection_string" {
  value       = "ssh ${azure_linux_virtual_machine.main.admin_username}@${local.vm_public_ip}"
  description = "SSH connection string"
}
