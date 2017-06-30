
CONTAINER = $(USER)/$(shell basename $(PWD))

all: build push

build:
	docker build -t $(CONTAINER) -f Dockerfile .

push:
	docker push $(CONTAINER)
