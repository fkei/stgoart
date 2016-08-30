__PWD=$(shell pwd)
__BIN=$(__PWD)/bin
__SRC=$(__PWD)/src
__PKG=$(__PWD)/pkg
__DIST=$(__PWD)/dist

__NAME=goa-start
__PROG=$(__DIST)/$(__NAME)
__PATH=$(__BIN):$$PATH
__GOPATH=$(__PWD)

TARGET=$(target)

all: deps start

clean:
	rm -rf $(__BIN)
	rm -rf $(__PKG)
	rm -rf $(__DIST)
	$(__PWD)/vendor uninstall

deps:
	$(__PWD)/vendor install

gen:
	GOPATH=$(__PWD) ./bin/goagen bootstrap \
		-d github.com/fkei/stgoart/design \
		-o src/github.com/fkei/stgoart

start:
	#GOPATH=${__GOPATH} go run  ./src/github.com/fkei/stgoart/*.go
	cd ./src/github.com/fkei/stgoart; \
		GOPATH=${__GOPATH} go run *.go

build:
	mkdir -p $(__DIST)
	GOPATH=${__GOPATH} go build -o $(__DIST)/stgoart ./src/github.com/fkei/stgoart
	GOPATH=${__GOPATH} go build -o $(__DIST)/adder-cli ./src/github.com/fkei/stgoart/tool/adder-cli


test:
	@echo "test"

bench:
	@echo "bench"


.PHONY: all \
	help \
	clean \
	deps \
	start \
	test \
	bench