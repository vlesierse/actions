# GitHub Actions for .NET Core

This Action for [.NET Core](https://dot.net/) enables arbitrary actions for interacting with the .NET Core CLI via [the `dotnet` command-line](https://docs.microsoft.com/en-us/dotnet/core/tools).

## Usage

An example workflow for building and testing your application.

```hcl
workflow "Build and Test" {
  on = "push"
  resolves = ["Test"]
}

action "Build" {
  uses = "vlesierse/actions/dotnet@master"
  args = "build"
}

action "Test" {
  needs = "Build"
  uses = "vlesierse/actions/dotnet@master"
  args = "test"
}
```

### Environment variables

All environment variables listed in [the official documentation](https://docs.aws.amazon.com/cli/latest/userguide/cli-environment.html) are supported.

We provide defaults for the following, these may also be overridden:

- `AWS_DEFAULT_REGION`- **Optional** The AWS region name, defaults to `us-east-1` ([more info](https://docs.aws.amazon.com/general/latest/gr/rande.html))
- `AWS_DEFAULT_OUTPUT`- **Optional** The CLI's output output format, defaults to `json` ([more info](https://docs.aws.amazon.com/cli/latest/userguide/cli-environment.html))

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
