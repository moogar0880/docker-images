DOCKER_REPO=moogar0880
VERSION=$(shell git describe --tags 2> /dev/null || echo 'latest')
IMAGES=cookiecutter glide gometalinter

# the all directive builds all of the docker images defined in this repo
.PHONY: all
all: images

# build docker images for all Dockerfiles in this repo and tag them at latest
# and cuttent git tag
.PHONY: images
images:
	$(foreach var,$(IMAGES),$(MAKE) -C $(var) build VERSION=$(VERSION) DOCKER_REPO=$(DOCKER_REPO)|| exit 1;)

.PHONY: cookiecutter
cookiecutter:
	docker build -f cookiecutter/Dockerfile \
		--tag $(DOCKER_REPO)/cookiecutter:$(VERSION) \
		--tag $(DOCKER_REPO)/cookiecutter:latest \
		cookiecutter

.PHONY: delve
delve:
	docker build -f delve/Dockerfile \
		--tag $(DOCKER_REPO)/delve:$(VERSION) \
		--tag $(DOCKER_REPO)/delve:latest \
		delve

.PHONY: glide
glide:
	docker build -f glide/Dockerfile \
		--tag $(DOCKER_REPO)/glide:$(VERSION) \
		--tag $(DOCKER_REPO)/glide:latest \
		glide

.PHONY: gometalinter
gometalinter:
	docker build -f gometalinter/Dockerfile \
		--tag $(DOCKER_REPO)/gometalinter:$(VERSION) \
		--tag $(DOCKER_REPO)/gometalinter:latest \
		gometalinter
