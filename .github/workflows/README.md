# GitHub Actions

> This directory showcases various GitHub Actions to improve Packer and Terraform code quality

## "Code Quality: Packer" (`packer.yaml`)

Workflow that sets up Packer to run within GitHub Actions, and then will run the following static checks:

- `packer format`
- `packer validate`

## "Code Quality: Super-Linter" (`superlinter.yaml`)

Workflow that lints all the code within a repository and provides feedback on formatting for the following languages:

- Bash
- JSON
- Markdown
- Terraform
- YAML

## "Code Quality: Terraform" (`terraform.yaml`)

Workflow that runs static checks on Terraform code to ensure better code quality. Specifically, this workflow sets up Terraform, then runs:

- `terraform fmt`
- `terraform init`
- `terraform validate`
