# This file is automatically loaded by Packer

# If you do not wish to use credentials supplied through the `az` CLI, set `use_azure_cli_auth` to false
# and enable the variables for `subscription_id`, `client_id`, and `client_secret`
# Next, move `variables.pkrvars.hcl.sample` to `variables.pkrvars.hcl` and populate it

variable "subscription_id" {
  type = string
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string

  # sensitive values are hidden from outputs
  sensitive = true
}

variable "image_publisher" {
  type        = string
  default     = "Canonical"
  description = "Name of the publisher to use for your base image"
}

variable "image_offer" {
  type        = string
  default     = "UbuntuServer"
  description = "Name of the publisher's offer to use for your base image"
}

variable "image_sku" {
  type        = string
  default     = "18.04-LTS"
  description = "SKU of the image offer to use for your base image"
}

variable "location" {
  type = string
  # this value is set in `terraform_data.auto.pkr.hcl`
  description = "Azure datacenter in which your VM will build"
}

variable "vm_size" {
  type        = string
  default     = "Standard_D2_v2"
  description = "Size of the VM used for building"
}

variable "managed_image_name" {
  type        = string
  default     = "packer"
  description = "Name of managed image"
}

variable "managed_image_resource_group_name" {
  type = string
  # this value is set in `terraform_data.auto.pkr.hcl`
  description = "Resource group under which the final artifact will be stored"
}

variable "os_type" {
  type        = string
  default     = "Linux"
  description = "OS Type to use for configuration of authentication credentials"
}
