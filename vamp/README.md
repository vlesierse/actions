# GitHub Actions for Vamp

This Action for [Vamp](https://vamp.io/) enables arbitrary actions for interacting with the Vamp CLI via [the `vamp` command-line](https://vamp.io/documentation/cli/using-the-cli/).

## Usage

An example workflow for deploying a Vamp blueprint and change the gateway.

```hcl
workflow "Deploy Service" {
  on = "push"
  resolves = ["Update Gateway"]
}

action "Deploy" {
  uses = "vlesierse/actions/vamp@master"
  args = "deploy -f blueprint.yml deployment --wait"
}

action "Update Gateway" {
  needs = "Deploy"
  uses = "vlesierse/actions/vamp@master"
  args = "update-gateway myDeployment/myService/web --route  myDeployment/myCluster/myService:1.1.0/web --condition "User-Agent == Safari" --strength 100%"
}
```

### Environment variables

These environment variables are required for Vamp to run successfully.:

- `VAMP_HOST`- **Required** The host url where Vamp is running
- `VAMP_TOKEN`- **Required** The API token used to authenticate API requests.
- `VAMP_NAMESPACE`- **Required** The namespace to use.

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
