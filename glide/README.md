# glide

Dockerfile for a Golang development environment using the
[Glide Dependency Manager](https://github.com/Masterminds/glide).

## Usage
The following are examples of how to execute various glide commands via the
docker cli and docker-compose.

### glide install
#### docker
```sh
$ docker run --rm -it \
    -v "$(pwd):/go/src/package/path" \
    -w "/go/src/package/path" \
    moogar0880/glide:latest
```

#### docker-compose
```yaml
version: '2'
services:
  glide:
    image: moogar0880/glide:latest
    volumes:
      - ./:/go/src/package/path
```

### glide update
#### docker
```sh
$ docker run --rm -it \
    -v "$(pwd):/go/src/package/path" \
    -w "/go/src/package/path" \
    moogar0880/glide:latest \
    glide update
```

#### docker-compose
```yaml
version: '2'
services:
  glide:
    image: moogar0880/glide:latest
    volumes:
      - ./:/go/src/package/path
    command: glide update
```

### glide get
To use glide to fetch a package and update your glide.yaml and glide.lock files
you can use `glide get`, by specifying a package to fetch. For example, to get
the `goimports` package.

#### docker
```sh
$ docker run --rm -it \
    -v "$(pwd):/go/src/package/path" \
    -w "/go/src/package/path" \
    moogar0880/glide:latest \
    glide get golang.org/x/tools/cmd/goimports
```

#### docker-compose
```yaml
version: '2'
services:
  glide:
    image: moogar0880/glide:latest
    volumes:
      - ./:/go/src/package/path
    command: glide get golang.org/x/tools/cmd/goimports
```
