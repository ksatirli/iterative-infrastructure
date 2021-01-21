# see https://registry.terraform.io/providers/integrations/github/latest/docs/resources/membership
resource "github_membership" "admins" {
  for_each = toset(var.organization_admins)

  username = each.key
  role     = "admin"
}
