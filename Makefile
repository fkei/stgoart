__PWD=$(shell pwd)
__BIN=$(__PWD)/bin
__SRC=$(__PWD)/src
__PKG=$(__PWD)/pkg
__DIST=$(__PWD)/dist

__GITHUB=github.com
__ORGS=fkei
__NAME=stgoart
__PROJECT=$(__NAME)
__DESIGN=design
__PUBLIC=public

__PROG=$(__DIST)/$(__NAME)
__PATH=$(__BIN):$$PATH
__GOPATH=$(__PWD)

__SRC_GITHUB_DIR=$(__SRC)/$(__GITHUB)
__SRC_ORGS_DIR=$(__SRC_GITHUB_DIR)/$(__ORGS)

__SRC_PROJECT_DIR=$(__SRC_ORGS_DIR)/$(__PROJECT)
__SRC_PROJECT_PUBLIC_DIR=$(__SRC_PROJECT_DIR)/$(__PUBLIC)

__SRC_PROJECT_DESIGN_DIR=$(__SRC_PROJECT_DIR)/$(__DESIGN)
__PKG_PROJECT_DESIGN=$(__GITHUB)/$(__ORGS)/$(__PROJECT)/$(__DESIGN)

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
	@#GOPATH=${__GOPATH} go run  $(__SRC_PROJECT_DIR)/*.go
	cd $(__SRC_PROJECT_DIR); \
		GOPATH=${__GOPATH} go run *.go

build:
	mkdir -p $(__DIST)
	GOPATH=${__GOPATH} go build -o $(__DIST)/$(__PROJECT) $(__SRC_PROJECT_DIR)
	GOPATH=${__GOPATH} go build -o $(__DIST)/$(__PROJECT)-cli $(__SRC_PROJECT_DIR)/tool/adder-cli


test:
	@echo "test"

bench:
	@echo "bench"

gen: gen-main gen-app gen-client gen-swagger gen-schema gen-js
	@#GOPATH=$(__PWD) ./bin/goagen bootstrap -d $(__PKG_PROJECT_DESIGN) -o $(__SRC_PROJECT_DIR)

gen-main:
	GOPATH=$(__PWD) ./bin/goagen main -d $(__PKG_PROJECT_DESIGN) -o $(__SRC_PROJECT_DIR)
gen-app:
	GOPATH=$(__PWD) ./bin/goagen app -d $(__PKG_PROJECT_DESIGN) -o $(__SRC_PROJECT_DIR)
gen-client:
	GOPATH=$(__PWD) ./bin/goagen client -d $(__PKG_PROJECT_DESIGN) -o $(__SRC_PROJECT_DIR)
gen-swagger:
	GOPATH=$(__PWD) ./bin/goagen swagger -d $(__PKG_PROJECT_DESIGN) -o $(__SRC_PROJECT_PUBLIC_DIR)
gen-schema:
	GOPATH=$(__PWD) ./bin/goagen schema -d $(__PKG_PROJECT_DESIGN) -o $(__SRC_PROJECT_PUBLIC_DIR)
gen-js:
	GOPATH=$(__PWD) ./bin/goagen js -d $(__PKG_PROJECT_DESIGN) -o $(__SRC_PROJECT_PUBLIC_DIR)

.PHONY: all \
	clean \
	deps \
	start \
	test \
	bench \
	gen \
	gen-main \
	gen-app \
	gen-client \
	gen-swagger \
	gen-schema \
	gen-js