# see https://registry.terraform.io/providers/integrations/github/latest/docs
provider "github" {
  # The token value is retrieved from the environment variable `GITHUB_TOKEN`
  # token = "..."
  organization = "a-demo-organization"

  # If you want to use a GitHub instance other than github.com, set the `base_url`:
  # base_url = "https://github.local/"
}
