# generate a random pet name
# see https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet
resource "random_pet" "packer_storage_account" {
  length = 1
}

# generate a random string (consisting of four characters)
# see https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string
resource "random_string" "packer_storage_account" {
  length  = 4
  special = false
}

locals {
  # Azure Storage Accounts require globally unique names, so we use the Random Provider to generate
  # a random suffix in the form of a pet name and a string (while omitting special characters)
  # see https://docs.microsoft.com/en-us/azure/storage/common/storage-account-overview
  random_suffix = "${random_pet.packer_storage_account.id}${random_string.packer_storage_account.id}"
}
