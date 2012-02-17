window.NodeNetBackbone =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  init: () ->
    console.log 'made it to init'
    window.nodeNetBackbone = new NodeNetBackbone.Routers.RegistryPatients()
    unless Backbone.history.started
      Backbone.history.start()
      Backbone.history.started = true

$(document).ready ->
  # console.log "doc ready"
  NodeNetBackbone.init()
