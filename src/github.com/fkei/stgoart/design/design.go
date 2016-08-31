package design

import (
	. "github.com/goadesign/goa/design"
	. "github.com/goadesign/goa/design/apidsl"
)

var _ = API("adder", func() {
	Title("st[goa]rt")
	Description("A teaser for goa")
	Host("localhost:3000")
	Scheme("http")
})

var _ = Resource("ping", func() {
	Action("show", func() {
		Routing(GET("ping"))
		Description("Return the server status(ping/pong)")
		Response(OK, "text/plain")
	})
})

var _ = Resource("swagger", func() {
	Origin("*", func() {
		Methods("GET") // Allow all origins to retrieve the Swagger JSON (CORS)
	})
	Files("/swagger.json", "public/swagger/swagger.json")
})
