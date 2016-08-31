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

// Ping runs the ping action.
func (c *PingController) Ping(ctx *app.PingPingContext) error {
	// PingController_Ping: start_implement

	// Put your logic here

	// PingController_Ping: end_implement
	return nil
}
