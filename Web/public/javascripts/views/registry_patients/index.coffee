NodeNetBackbone.Views.RegistryPatients || = {}

class NodeNetBackbone.Views.RegistryPatients.Index extends Backbone.View
  template: JST["registry_patients/index"]()

  # events:
  #   'submit #new_registry_patient': 'createRegistryPatient'

  initialize: ->
    # TODO: Notice difference between railscasts approach and rails-backbone gem approach
    @collection.on('reset', @render, this)
    @collection.on('add', @addOne, this)

  render: ->
    console.log "rendering index..."
    template_html = JST['registry_patients/index']()
    $(@el).html(template_html)
    # @addAll()
    @collection.each(@addOne)
    this

  addAll: () =>
    @collection.each(@addOne)

  addOne: (registry_patient) =>
    console.log "adding one patient view"
    console.log "registry patient: " + registry_patient.get('first_name')
    view = new NodeNetBackbone.Views.RegistryPatients.RegistryPatient({model: registry_patient})
    @$('#registry_patients').append(view.render().el)
