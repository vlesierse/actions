# GitHub Actions for Terraform

This Action for [Terraform](https://terraform.io/) enables arbitrary actions for interacting with Terraform.

## Usage

An example workflow for building and testing your application.

```hcl
workflow "Build and Test" {
  on = "push"
  resolves = ["Apply"]
}

action "Init" {
  uses = "vlesierse/actions/terraform@master"
  args = "init"
}

action "Plan" {
  needs = "Init"
  uses = "vlesierse/actions/terraform@master"
  args = "plan -input=false -out=tfplan"
}

action "Filter Master" {
  uses = "actions/bin/filter@master"
  args = "branch master"
  needs = ["Plan"]
}

action "Apply" {
  needs = "Filter Master"
  uses = "vlesierse/actions/terraform@master"
  args = "apply -input=false tfplan"
}
```

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
