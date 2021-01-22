# Terraform Workflow `azure`

> This directory showcases a Terraform workflow that creates an Azure Resource Group, and a Packer variables definition file.

## Log in to Azure through `az`

For Terraform to be able to create resources in Azure, you will need to provide authentication credentials.

The workflow in `./terraform/azure` is set up to use the Azure CLI `az` login information to retrieve these credentials.

To log in, execute the `az login` command and follow the instructions presented by the application.

> ⚠️ You will need to log in to an Azure account that has permissions to create Resource Groups.

## Run the Terraform workflow

To run the Terraform workflow, first initialize the directory using the [init](https://www.terraform.io/docs/commands/init.html) command:

```sh
terraform init
```

This will download all required Terraform providers.

Next, inspect the resources that will be created by executing the [plan](https://www.terraform.io/docs/commands/plan.html) command:

```sh
terraform plan
```

If all of this looks good, provision the resources using the [apply][https://www.terraform.io/docs/commands/apply.html} command:

```sh
terraform apply
```

Once complete, inspect the Packer workflow directory at `../../packer/` and look for a file called `terraform_data.auto.pkrvars.hcl`.

This file will contain information Packer can use to create images in the applicable Resource Group and Location.
