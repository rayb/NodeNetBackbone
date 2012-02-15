class NodeNetBackbone.Routers.RegistryPatients extends Backbone.Router
  routes:
    '.*'        : 'index'
    '/index'    : 'index'
    '/:id'      : 'show'
    '/new'      : 'new'
    '/:id/edit' : 'edit'

  initialize: ->
    console.log 'init the router'
    # @registry_patients = new NodeNetBackbone.Collections.RegistryPatients()
    # @registry_patients.reset($('#container').data('registry_patients'))
    this.index()

  index: ->
    console.log 'made it to the route index'
    # view = new NodeNetBackbone.Views.RegistryPatients.Index(collection: @registry_patients)
    $('#container').html('hello from router')
    # $('#container').html(view.render().el)

  # show: (id) ->
  #   console.log('debug showing patient')
  #   @registry_patient = @registry_patients.get(id)
  #   view = new NodeNetBackbone.Views.RegistryPatients.Show(model: @registry_patient)

  # new: ->

  # edit: (id) ->

