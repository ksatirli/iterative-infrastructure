terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.3.0"
    }
  }
}

terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "a-demo-organization"

    workspaces {
      name = "iterative-infrastructure-github"
    }
  }
}
