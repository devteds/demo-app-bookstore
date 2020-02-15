REPO = devteds/demo-bookstore-shopui

VERSION = 1.0

.PHONY: build push

build:
	docker build -t ${REPO}:${VERSION} .
	docker tag ${REPO}:${VERSION} ${REPO}:latest

push:
	docker push ${REPO}:${VERSION}
	docker push ${REPO}:latest
