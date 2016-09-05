# stgoart

[Goa](https://goa.design/) hello world project.

1

# Start


## Install

```
$ make
/Users/fkei/Desktop/stgoart/vendor install
[LOG] Getting dependency    -> git:github.com/goadesign/goa/...@398e76a5b137cd5d46d6a2973015c92fa9e0645a
[LOG] git reset [success] : 398e76a5b137cd5d46d6a2973015c92fa9e0645a  ==  398e76a5b137cd5d46d6a2973015c92fa9e0645a
GOPATH=/Users/fkei/Desktop/stgoart ./bin/goagen main -d github.com/fkei/stgoart/design -o src/github.com/fkei/stgoart

GOPATH=/Users/fkei/Desktop/stgoart ./bin/goagen app -d github.com/fkei/stgoart/design -o src/github.com/fkei/stgoart
src/github.com/fkei/stgoart/app
src/github.com/fkei/stgoart/app/contexts.go
src/github.com/fkei/stgoart/app/controllers.go
src/github.com/fkei/stgoart/app/hrefs.go
src/github.com/fkei/stgoart/app/media_types.go
src/github.com/fkei/stgoart/app/user_types.go
src/github.com/fkei/stgoart/app/test
src/github.com/fkei/stgoart/app/test/ping_testing.go
src/github.com/fkei/stgoart/app/test/swagger_testing.go
GOPATH=/Users/fkei/Desktop/stgoart ./bin/goagen client -d github.com/fkei/stgoart/design -o src/github.com/fkei/stgoart
src/github.com/fkei/stgoart/tool/stgoart-cli
src/github.com/fkei/stgoart/tool/stgoart-cli/main.go
src/github.com/fkei/stgoart/tool/cli
src/github.com/fkei/stgoart/tool/cli/commands.go
src/github.com/fkei/stgoart/client
src/github.com/fkei/stgoart/client/client.go
src/github.com/fkei/stgoart/client/ping.go
src/github.com/fkei/stgoart/client/swagger.go
src/github.com/fkei/stgoart/client/user_types.go
src/github.com/fkei/stgoart/client/media_types.go
GOPATH=/Users/fkei/Desktop/stgoart ./bin/goagen swagger -d github.com/fkei/stgoart/design -o src/github.com/fkei/stgoart/public
src/github.com/fkei/stgoart/public/swagger
src/github.com/fkei/stgoart/public/swagger/swagger.json
src/github.com/fkei/stgoart/public/swagger/swagger.yaml
GOPATH=/Users/fkei/Desktop/stgoart ./bin/goagen schema -d github.com/fkei/stgoart/design -o src/github.com/fkei/stgoart/public
src/github.com/fkei/stgoart/public/schema
src/github.com/fkei/stgoart/public/schema/schema.json
GOPATH=/Users/fkei/Desktop/stgoart ./bin/goagen js -d github.com/fkei/stgoart/design -o src/github.com/fkei/stgoart/public
src/github.com/fkei/stgoart/public/js
src/github.com/fkei/stgoart/public/js/client.js
src/github.com/fkei/stgoart/public/js/axios.min.js
src/github.com/fkei/stgoart/public/js/index.html
src/github.com/fkei/stgoart/public/js/example.go
cd src/github.com/fkei/stgoart; \
                GOPATH=/Users/fkei/Desktop/stgoart go run *.go
2016/09/05 09:52:21 [INFO] mount ctrl=Ping action=Show route=GET /ping
2016/09/05 09:52:21 [INFO] mount ctrl=Swagger files=public/swagger/swagger.json route=GET /swagger.json
2016/09/05 09:52:21 [INFO] listen transport=http addr=:3000
2016/09/05 09:53:31 [INFO] started req_id=AQPqDHfJuj-1 GET=/ping from=::1 ctrl=PingController action=Show
2016/09/05 09:53:31 [INFO] completed req_id=AQPqDHfJuj-1 status=200 bytes=4 time=42.382µs
```

> Access URL -> https://localhost:3000/ping
