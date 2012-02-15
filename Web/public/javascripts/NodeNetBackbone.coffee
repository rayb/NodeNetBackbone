window.NodeNetBackbone =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  init: (options) ->
    NodeNetBackbone.options = options
    new NodeNetBackbone.Routers.PatientsRouter(options)
    unless Backbone.history.started
      Backbone.history.start(pushState: true)
      Backbone.history.started = true

$(document).ready ->
  NodeNetBackbone.init()
