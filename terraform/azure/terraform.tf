terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.43.0"
    }

    local = {
      source  = "hashicorp/local"
      version = "2.0.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }
}
