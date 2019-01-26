# GitHub Action for Go

[golang]: https://golang.org/

This action for [Go][golang] enables arbitrary actions with the `go` command,
such testing and building packages.

## Usage

An example workflow to test and build follows:

```hcl
workflow "Build and Test" {
  on = "push"
  resolves = ["Test"]
}

action "Build" {
  uses = "actions-contrib/go@master"
  args = "build ./..."
}

action "Test" {
  needs = "Build"
  uses = "actions-contrib/go@master"
  args = "test -v -race ./..."
}
```


## License

[MIT]: https://opensource.org/licenses/MIT

`actions-contrib/go` is open source software released under the
[MIT license][MIT].

As with all Docker images, these likely also contain other software which may be
under other licenses (such as Bash, etc from the base distribution, along with
any direct or indirect dependencies of the primary software being contained).

As for any pre-built image usage, it is the image user's responsibility to
ensure that any use of this image complies with any relevant licenses for all
software contained within.
