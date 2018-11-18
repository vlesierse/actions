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

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
