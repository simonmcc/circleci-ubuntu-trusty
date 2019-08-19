CONTAINER_NAME=simonmcc/circleci-ubuntu-trusty
IMAGE_NAME=$(CONTAINER_NAME):latest

all: 	build

build:
	docker build --pull -t $(IMAGE_NAME) .

push: build
	docker push $(IMAGE_NAME)

run: build
	docker run --rm -ti $(IMAGE_NAME) /bin/bash
