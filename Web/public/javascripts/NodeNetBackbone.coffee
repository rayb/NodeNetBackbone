window.NodeNetBackbone =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  init: (options) ->
    console.log 'made it to init'
    new NodeNetBackbone.Routers.RegistryPatients()
    unless Backbone.history.started
      Backbone.history.start(pushState: true)
      Backbone.history.started = true

$(document).ready ->
  NodeNetBackbone.init()
