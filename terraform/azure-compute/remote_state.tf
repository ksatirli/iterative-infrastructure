# Utilize the previously generated Terraform State file to retrieve some values
# see https://www.terraform.io/docs/providers/terraform/d/remote_state.html
data "terraform_remote_state" "upstream" {
  backend = "remote"

  config = {
    organization = "a-demo-organization"
    workspaces = {
      name = "iterative-infrastructure-azure"
    }
  }
}

locals {
  upstream_name     = data.terraform_remote_state.upstream.outputs.resource_group_name
  upstream_location = data.terraform_remote_state.upstream.outputs.resource_group_location
}
