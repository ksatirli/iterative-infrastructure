# see https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository
resource "github_repository" "packer_images" {
  name         = "packer-images"
  description  = ":package: Packer Images for Better Fridays"
  homepage_url = "https://packer.io/"

  visibility = "public"

  has_issues   = true
  has_projects = false
  has_wiki     = false

  allow_merge_commit     = false
  allow_squash_merge     = true
  allow_rebase_merge     = false
  delete_branch_on_merge = true

  topics = [
    "hashicorp",
    "hashicorp-packer",
    "packer",
    "packer-images"
  ]

  vulnerability_alerts = true
}
