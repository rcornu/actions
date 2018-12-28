# GitHub Actions for Terragrunt

This Action for Terragrunt enables arbitrary actions with the terragrunt CLI, including `plan-all`, `apply-all` or `validate-all`.
([more info](https://github.com/gruntwork-io/terragrunt#terragrunt-details)) 

## Usage

An example workflow to plan a Terraform project using Terragrunt follows:

```hcl
action "Terragrunt" {
  uses = "rcornu/actions/terragrunt@master"
  args = "plan-all"
}
```