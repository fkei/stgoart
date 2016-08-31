package main

import (
	"github.com/fkei/stgoart/app"
	"github.com/goadesign/goa"
)

// PingController implements the ping resource.
type PingController struct {
	*goa.Controller
}

// NewPingController creates a ping controller.
func NewPingController(service *goa.Service) *PingController {
	return &PingController{Controller: service.NewController("PingController")}
}

// Show runs the show action.
func (c *PingController) Show(ctx *app.ShowPingContext) error {
	// PingController_Show: start_implement

	// Put your logic here

	// PingController_Show: end_implement
	return ctx.OK([]byte("pong"))
}
