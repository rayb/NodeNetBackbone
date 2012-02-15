class NodeNetBackbone.Views.RegistryPatient extends Backbone.View
  template: JST['registry_patients/registry_patient']
  tagName: 'li'

  events:
    'click': 'showRegistryPatient'

  initialize: ->
    @model.on('change', @render, this)

  showRegistryPatient: ->
    Backbone.history.navigate('')

  render: ->
    $(@el).html(@template(registry_patient: @model))
    this
