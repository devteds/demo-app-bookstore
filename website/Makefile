REPO = devteds/demo-bookstore-website

VERSION = 1.1

.PHONY: build push

build:
	docker build -t ${REPO}:${VERSION} .
	docker tag ${REPO}:${VERSION} ${REPO}:latest

push:
	docker push ${REPO}:${VERSION}
	docker push ${REPO}:latest
