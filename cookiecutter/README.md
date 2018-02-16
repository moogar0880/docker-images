# cookiecutter

Dockerfile for running [cookiecutter](https://github.com/audreyr/cookiecutter)
to generate a new package based on a provided template.

## Usage

This image accepts, as it's command, the `cookiecutter` command to run. For more
information about running `cookiecutter`, see the official documentation at the
[Official Github Repo](https://github.com/audreyr/cookiecutter).

### Example

This container is just run as a one-off, so it's easy enough to do something like
this:

```bash
$ docker run --rm -it -v "$(pwd):/mnt" \
    moogar0880/cookiecutter:latest \
    https://github.com/audreyr/cookiecutter-pypackage.git
```

But you might find it easier in the long run to do something like the following:

```bash
# alias cookiecutter to the root of the "docker run" command
alias cookiecutter='docker run --rm -it -v "$(pwd):/mnt" moogar0880/cookiecutter:latest'

# now subsequent calls with the `cookiecutter` command will run in the docker container
cookiecutter https://github.com/audreyr/cookiecutter-pypackage.git
```
