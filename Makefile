build:
	docker build --force-rm -t testme  .
	docker images

.pyhony: build
