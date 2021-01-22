# Iterative Infrastructure

> Iterating on infrastructure with Terraform, Packer, and GitHub Actions

## Table of Contents

- [Iterative Infrastructure](#iterative-infrastructure)
  - [Table of Contents](#table-of-contents)
  - [Requirements](#requirements)
  - [Examples](#examples)
  - [Author Information](#author-information)
  - [License](#license)

## Requirements

To use the code in this repository, you will need the following applications:

* [HashiCorp Terraform](https://www.terraform.io/downloads.html) `0.14.4` (or higher)
* [HashiCorp Packer](https://www.packer.io/downloads) `1.6.6` (or higher)
* Azure CLI [az](https://docs.microsoft.com/en-us/cli/azure/) `2.0.0` (or higher)

Additionally, you will need a GitHub [Personal Access Token](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token).

## Examples

The code in this repository is split out into a handful of distinct flows:

* `terraform/azure` contains code for Terraform to set up an Azure Resource Group and generate a Packer variables definition file
* `packer` contains code for Packer to build a (very!) basic image for an Azure Linux Virtual Machine
* `terraform/azure-compute` contains code for Terraform to start a Linux Virtual Machine with the Packer image
* `terraform/github` contains code for Terraform to set up a GitHub Organization's memberships and repository
* `.github/workflows` contains GitHub Actions to ensure code quality for Packer and Terraform projects

Each directory contains its own `README.md` with information relevant to the workflow.

## Author Information

This repository is maintained by [Kerim Satirli](https://github.com/ksatirli) and [Taylor Dolezal](https://github.com/onlydole).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
