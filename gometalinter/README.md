# gometalinter

Dockerfile for running a suite of static Golang source code linters via the
[gometalinter](https://github.com/alecthomas/gometalinter).

## Usage
This image accepts, as it's command, the `gometalinter` command to run. More
information about running `gometalinter`, see the official documentation at the
[Official Github Repo](https://github.com/alecthomas/gometalinter).

When running, you _must_ set the workdir to be the directory on the `GOPATH`
that your package has been mounted into.

### fast
To run only a quick ("fast") sub-set of linters
```yaml
version: '2'
services:
  linter:
    image: moogar0880/gometalinter:latest
    workdir: /go/src/package/path
    command: gometalinter --fast ./...
```

### atom
To run the same combination of linters as the go-plus atom package runs by
default

```yaml
version: '2'
services:
  linter:
    image: moogar0880/gometalinter:latest
    workdir: /go/src/package/path
    command: >
      gometalinter
      --deadline=120s
      --enable-gc
      --disable-all
      --enable=vet
      --enable=vetshadow
      --enable=deadcode
      --enable=golint
      --enable=ineffassign
      --enable=goconst
      --enable=gosimple
      --enable=gofmt
      --enable=misspell
      --exclude=/usr/local/go/src
      --vendor
      --tests
      ./...
```
