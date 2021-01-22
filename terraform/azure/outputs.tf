output "resource_group_location" {
  value = azurerm_resource_group.packer.location
}

output "resource_group_name" {
  value = azurerm_resource_group.packer.name
}
