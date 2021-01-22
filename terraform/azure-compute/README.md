# Terraform Workflow `azure-compute`

> This directory showcases a Terraform workflow that starts an Azure Linux VM using a self-created Packer image

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

If all of this looks good, provision the resources using the [apply](https://www.terraform.io/docs/commands/apply.html) command:

```sh
terraform apply
```

Once complete, inspect the Terraform Outputs and take note of the `ssh_connection_string`.

The command contained within (starting with `ssh ...`) will allow you to connect to your freshly provisioned virtual machine.
