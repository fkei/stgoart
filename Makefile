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

start:
	GOPATH=${__GOPATH} go run ./src/github.com/fkei/stgoart/main.go

test:
	@echo "test"

bench:
	@echo "bench"


.PHONY: all \
	help \
	all \
	clean \
	deps \
	start \
	test \
	bench