source "azure-arm" "server" {
  # the following configuration represents a minimally viable selection
  # for more options see: https://www.packer.io/docs/builders/azure/arm

  # authentication with `az` CLI supplied credentials
  use_azure_cli_auth = true

  # authentication with explicitly defined credentials
  # NOTE: to use this section, disable the `use_azure_cli_auth` property and
  # NOTE: enable the `subscription_id`, `client_id`, and `client_secret` properties
  #subscription_id = "${var.subscription_id}"
  #client_id       = "${var.client_id}"
  #client_secret   = "${var.client_secret}"

  # base image
  image_publisher = var.image_publisher
  image_offer     = var.image_offer
  image_sku       = var.image_sku

  # capture machine configuration
  location = var.location
  vm_size  = var.vm_size
  os_type  = var.os_type

  # artifact configuration
  managed_image_resource_group_name = var.managed_image_resource_group_name
  managed_image_name                = var.managed_image_name
}

build {
  sources = [
    "source.azure-arm.server"
  ]

  provisioner "shell" {
    execute_command = "chmod +x {{ .Path }}; {{ .Vars }} sudo -E sh '{{ .Path }}'"
    inline          = ["apt-get update", "apt-get upgrade -y", "/usr/sbin/waagent -force -deprovision+user && export HISTSIZE=0 && sync"]
    inline_shebang  = "/bin/sh -x"
  }
}


