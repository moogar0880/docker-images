# define the name of the repository and docker image
IMAGE=$(DOCKER_REPO)/gometalinter

.PHONY: build
build:
	docker build -t $(IMAGE):$(VERSION) -t $(IMAGE):latest .
