# emojipacks

Dockerfile for running [emojipacks](https://github.com/lambtron/emojipacks)
to perform bulk emoji uploads to a slack team.

## Usage

This image accepts, as it's command, the `emojipacks` command to run. For more
information about running `emojipacks`, see the official documentation at the
[Official Github Repo](https://github.com/lambtron/emojipacks).

### Example

This container is just run as a one-off, so it's easy enough to do something like
this:

```bash
$ docker run --rm -it -v "$(pwd):/mnt" \
    moogar0880/emojipacks:latest \
    --pack /mnt/apack.yml
```

You will then be prompted to enter information about your slack team before the upload will begin.

Optionally, you can specify some or all of the information on the commandline:

```bash
$ docker run --rm -it -v "$(pwd):/mnt" \
    moogar0880/emojipacks:latest \
        --subdomain my-team \
        --email my-email@example.com \
        --pack /mnt/apack.yml
```
