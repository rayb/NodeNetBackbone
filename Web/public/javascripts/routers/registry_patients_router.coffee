class NodeNetBackbone.Routers.RegistryPatients extends Backbone.Router
  routes:
    '.*'        : 'index'
    '/index'    : 'index'
    '/:id'      : 'show'
    '/new'      : 'new'
    '/:id/edit' : 'edit'

  initialize: ->
    @registry_patients = new NodeNetBackbone.Collections.RegistryPatients()
    @registry_patients.reset($('#container').data('registry_patients'))

  index: ->
    view = new NodeNetBackbone.Views.RegistryPatients.Index(collection: @registry_patients)
    $('#container').html(view.render().el)

  show: (id) ->
    console.log('debug showing patient')
    @registry_patient = @registry_patients.get(id)
    view = new NodeNetBackbone.Views.RegistryPatients.Show(model: @registry_patient)

  new: ->

  edit: (id) ->

