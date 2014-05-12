AUTHOR=mpeterson
NAME=sslh
VERSION=0.2

.PHONY: all build tag_latest

all: build

build:
	docker build -t $(AUTHOR)/$(NAME):$(VERSION) --rm image

tag_latest:
	docker tag $(AUTHOR)/$(NAME):$(VERSION) $(AUTHOR)/$(NAME):latest
