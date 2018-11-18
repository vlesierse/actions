workflow "Build and Publish" {
  on = "push"
  resolves = [
    "Test",
    "Publish",
  ]
}

action "Lint" {
  uses = "actions/action-builder/shell@master"
  runs = "make"
  args = "lint"
}

action "Test" {
  uses = "actions/action-builder/shell@master"
  runs = "make"
  args = "test"
}

action "Build" {
  uses = "actions/action-builder/docker@master"
  needs = ["Lint", "Test"]
  runs = "make"
  args = "build"
}

action "Publish Filter" {
  uses = "actions/bin/filter@95c1a3b"
  args = "branch master"
  needs = ["Build"]
}

action "Docker Login" {
  uses = "actions/docker/login@master"
  secrets = ["DOCKER_PASSWORD", "DOCKER_USERNAME"]
  needs = ["Publish Filter"]
}

action "Publish" {
  uses = "actions/action-builder/docker@master"
  runs = "make"
  args = "publish"
  needs = ["Docker Login"]
}
