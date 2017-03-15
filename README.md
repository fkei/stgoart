# stgoart

Sample project using [cdep](https://github.com/fkei/cdep) and [Goa](https://goa.design/)


# QuickStart

```
$ make deps # dependency go package install
> ./cdep install
> [INFO ] go get <-- git:github.com/goadesign/goa/...@398e76a5b137cd5d46d6a2973015c92fa9e0645a
> [INFO ] check [success] git reset: 398e76a5b137cd5d46d6a2973015c92fa9e0645a == 398e76a5b137cd5d46d6a2973015c92fa9e0645a
> cd src/github.com/fkei/stgoart; GOPATH=/Users/fkei/workspace/stgoart go run *.go

$ make gen # goa code generate
> GOPATH=/Users/fkei/workspace/stgoart ./bin/goagen main    -d github.com/fkei/stgoart/design -o ./src/github.com/fkei/stgoart
> ......
> GOPATH=/Users/fkei/workspace/stgoart ./bin/goagen app     -d github.com/fkei/stgoart/design -o ./src/github.com/fkei/stgoart
> ......
> GOPATH=/Users/fkei/workspace/stgoart ./bin/goagen client  -d github.com/fkei/stgoart/design -o ./src/github.com/fkei/stgoart
> ......
> GOPATH=/Users/fkei/workspace/stgoart ./bin/goagen swagger -d github.com/fkei/stgoart/design -o ./src/github.com/fkei/stgoart
> ......
> GOPATH=/Users/fkei/workspace/stgoart ./bin/goagen schema  -d github.com/fkei/stgoart/design -o ./src/github.com/fkei/stgoart
> ......
> GOPATH=/Users/fkei/workspace/stgoart ./bin/goagen js      -d github.com/fkei/stgoart/design -o ./src/github.com/fkei/stgoart
> ......

$ make start # server start
> cd src/github.com/fkei/stgoart; GOPATH=/Users/fkei/workspace/stgoart go run *.go
> 2017/03/15 20:53:02 [INFO] mount ctrl=Ping action=Show route=GET /ping
> 2017/03/15 20:53:02 [INFO] mount ctrl=Swagger files=public/swagger/swagger.json route=GET /swagger.json
> 2017/03/15 20:53:02 [INFO] listen transport=http addr=:3000
```

> access url: http://localhost:3000/ping