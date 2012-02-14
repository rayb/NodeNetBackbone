window.NodeNetBackbone =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  init: (options) ->
    NodeNetBavkbone.options = options
    window.nodeNetBackbone = new NodeNetBackbone.Routers.PatientsRouter(options)
    unless Backbone.history.started
      Backbone.history.start()
      Backbone.history.started = true

