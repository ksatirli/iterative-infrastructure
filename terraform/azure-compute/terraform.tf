terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.43.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "3.0.0"
    }
  }
}

terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "a-demo-organization"

    workspaces {
      name = "iterative-infrastructure-azure-compute"
    }
  }
}
