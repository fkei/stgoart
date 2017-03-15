PWD=$(shell pwd)

all: deps gen start

clean:
	rm -rf bin;
	rm -rf pkg
	rm -rf dist
	./cdep uninstall

deps:
	./cdep install

start:
	cd src/github.com/fkei/stgoart; GOPATH=$(PWD) go run *.go

build:
	mkdir -p dist
	GOPATH=$(PWD) go build -o dist/stgoart $(__PKG_PROJECT)
	GOPATH=$(PWD) go build -o dist/stgoart-cli github.com/fkei/stgoart/tool/stgoart-cli

gen:
	GOPATH=$(PWD) ./bin/goagen main    -d github.com/fkei/stgoart/design -o ./src/github.com/fkei/stgoart
	GOPATH=$(PWD) ./bin/goagen app     -d github.com/fkei/stgoart/design -o ./src/github.com/fkei/stgoart
	GOPATH=$(PWD) ./bin/goagen client  -d github.com/fkei/stgoart/design -o ./src/github.com/fkei/stgoart
	GOPATH=$(PWD) ./bin/goagen swagger -d github.com/fkei/stgoart/design -o ./src/github.com/fkei/stgoart
	GOPATH=$(PWD) ./bin/goagen schema  -d github.com/fkei/stgoart/design -o ./src/github.com/fkei/stgoart
	GOPATH=$(PWD) ./bin/goagen js      -d github.com/fkei/stgoart/design -o ./src/github.com/fkei/stgoart

.PHONY: all clean deps start build gen
