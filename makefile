.PHONY: build
build:
	mkdir -p bin
	go build -o bin/apiserver ./cmd/apiserver
	chmod +x bin/apiserver

.PHONY: test
test:
	go test -v -race -timeout 30s ./cmd/... ./internal/...

.DEFAULT_GOAL:=build