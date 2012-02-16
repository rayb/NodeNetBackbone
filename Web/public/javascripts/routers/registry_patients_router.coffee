class NodeNetBackbone.Routers.RegistryPatients extends Backbone.Router
  routes:
    ''          : 'index'
    '.*'        : 'index'
    '/index'    : 'index'
    '/:id'      : 'show'
    '/new'      : 'new'
    '/:id/edit' : 'edit'

  initialize: ->
    console.log 'init the router'
    @registry_patients = new NodeNetBackbone.Collections.RegistryPatients()
    # TODO: Figure out why this isn't sticking...
    @registry_patients.model = NodeNetBackbone.Models.RegistryPatient
    # TODO: Try to only round trip once on initial load
    # @registry_patients.reset($('#container_data').attr('data'))
    @registry_patients.fetch()

    # TODO: SSI - why are the routes not getting processed?
    this.index()

  index: ->
    console.log 'made it to the route index'
    view = new NodeNetBackbone.Views.RegistryPatients.Index(collection: @registry_patients)
    # $('#container').html('<h1>Patients V3: (Backbone):</h1>')
    $('#container').html(view.render().el)

  # show: (id) ->
  #   console.log('debug showing patient')
  #   @registry_patient = @registry_patients.get(id)
  #   view = new NodeNetBackbone.Views.RegistryPatients.Show(model: @registry_patient)

  # new: ->

  # edit: (id) ->

