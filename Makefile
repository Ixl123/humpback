
CONTAINER = $(USER)/$(shell basename $(PWD)):0.1

all: build push

build:
	docker build -t $(CONTAINER) -f Dockerfile .

push:
	docker push $(CONTAINER)
