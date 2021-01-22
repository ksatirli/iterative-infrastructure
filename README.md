# Iterative Infrastructure

> Iterating on infrastructure with Terraform, Packer, and GitHub Actions

## Table of Contents

- [Iterative Infrastructure](#iterative-infrastructure)
  - [Table of Contents](#table-of-contents)
  - [Important Links](#important-links)
  - [Requirements](#requirements)
  - [Workflows](#workflows)
  - [Additional Reading](#additional-reading)
  - [Author Information](#author-information)
  - [License](#license)

## Important Links

Slides: [speakerdeck.com/ksatirli/iterative-infrastructure](speakerdeck.com/ksatirli/iterative-infrastructure)
Code: [github.com/ksatirli/iterative-infrastructure](https://github.com/ksatirli/iterative-infrastructure)

## Requirements

To use the code in this repository, you will need the following applications:

* [HashiCorp Terraform](https://www.terraform.io/downloads.html) `0.14.4` (or later)
* [HashiCorp Packer](https://www.packer.io/downloads) `1.6.6` (or later)
* Azure CLI [az](https://docs.microsoft.com/en-us/cli/azure/) `2.0.0` (or later)

Additionally, you will need a GitHub [Personal Access Token](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token).

## Workflows

The code in this repository is split out into a handful of distinct flows, each in their own directory:

* `terraform/azure` contains code for Terraform to set up an Azure Resource Group and generate a Packer variables definition file
* `packer` contains code for Packer to build a (very!) basic image for an Azure Linux Virtual Machine
* `terraform/azure-compute` contains code for Terraform to start a Linux Virtual Machine with the Packer image
* `terraform/github` contains code for Terraform to set up a GitHub Organization's memberships and repository
* `.github/workflows` contains GitHub Actions to ensure code quality for Packer and Terraform projects

Each directory contains its own `README.md` with information relevant to the workflow.

## Additional Reading

While the authors of this repository take care to explain all workflows with the amount of detail required to execute them, the information here should not be considered exhaustive.

This section is a collection of links that will help you make the most of today's session.

### Terraform

* introduction to the Terraform Ecosystem: [speakerdeck.com/ksatirli/intro-to-the-terraform-ecosystem](https://speakerdeck.com/ksatirli/intro-to-the-terraform-ecosystem)
* CLI commands [terraform.io/docs/commands/index.html](https://www.terraform.io/docs/commands/index.html)
* variables and type constraints: [terraform.io/docs/configuration/variables.html](https://www.terraform.io/docs/configuration/variables.html#type-constraints)
* variable definition files: [terraform.io/docs/configuration/variables.html](https://www.terraform.io/docs/configuration/variables.html#variable-definitions-tfvars-files)
* information about Terraform State: [terraform.io/docs/state/index.html](https://www.terraform.io/docs/state/index.html)
* in-depth guides on how to use Terraform: [learn.hashicorp.com/terraform](https://learn.hashicorp.com/terraform)
* Terraform Code Quality: [speakerdeck.com/ksatirli/code-quality-for-terraform](https://speakerdeck.com/ksatirli/code-quality-for-terraform)

### Packer

* CLI commands [packer.io/docs/commands](https://www.packer.io/docs/commands)
* variables [packer.io/docs/templates/user-variables](https://www.packer.io/docs/templates/user-variables)
* in-depth guides on how to use Packer: [learn.hashicorp.com/packer](https://learn.hashicorp.com/packer)
* Packer GitHub Actions: [github.com/operatehappy/packer-github-actions](https://github.com/operatehappy/packer-github-actions)

## Author Information

This repository is maintained by [Kerim Satirli](https://github.com/ksatirli) and [Taylor Dolezal](https://github.com/onlydole).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
