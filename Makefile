build_docker: main
	docker build --force-rm -t testme  .
	docker images

main:
	go build main.go

.pyhony: build_docker
