build_docker: main
	docker build --force-rm -t trivago/trash:gotest  .
	docker images

main:
	go build main.go

.pyhony: build_docker
