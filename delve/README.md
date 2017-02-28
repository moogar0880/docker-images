# delve
Dockerfile for running the [delve](https://github.com/derekparker/delve)
debugger.

## Usage
This image accepts, as it's command, the `delve` command arguments to run.

### delve debug
You can build and run a Go binary:
```yaml
version: '2'
services:
  linter:
    image: moogar0880/gometalinter:latest
    workdir: /go/src/package/path
    command: debug /package/path
```

### delve exec
You can debug a pre-compiled Go binary:
```yaml
version: '2'
services:
  linter:
    image: moogar0880/gometalinter:latest
    workdir: /go/src/package/path
    command: exec /path/to/my/binary
```

### delve attach
You can attach to a running Go binary:
```yaml
version: '2'
services:
  linter:
    image: moogar0880/gometalinter:latest
    workdir: /go/src/package/path
    command: attach 1
```
