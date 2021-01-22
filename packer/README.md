# Packer Workflows

> This directory showcases a Packer workflow that builds a (very) basic Linux image.

## Run prerequisite Terraform workflows

The `../terraform/azure` directory contains a workflow that generates an Azure Resource Group as well as a Packer definition file.

For a seamless Packer experience, we recommend you execute the Terraform workflow before the Packer workflow.

Alternatively, you can manually create an Azure Resource Group as well as the `terraform_data.auto.pkrvars.hcl` file.

## Log in to Azure through `az`

If you executed the `../terraform/azure` workflow succesfully, you can skip this step. If not, read on:

For Packer to be able to build images in Azure, you will need to provide authentication credentials.

The workflow in `./packer` is set up to use the Azure CLI `az` login information to retrieve these credentials.

To log in, execute the `az login` command and follow the instructions presented by the application.

> ⚠️ You will need to log in to an Azure account that has permissions to create Virtual Machines and store Virtual Machine Images.

## Run the Packer workflow

To build the Packer image, use the [build](https://www.packer.io/docs/commands/build) command:

`packer build image.pkr.hcl`

This will execute the Packer build workflow.

> ⚠️ If you get one or more errors about unset variables (`location`, `managed_image_resource_group_name` etc.), make sure to execute the Terraform workflow in `../terraform/azure`.
