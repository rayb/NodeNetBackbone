NodeNetBackbone.Views.RegistryPatients || = {}

class NodeNetBackbone.Views.RegistryPatients.RegistryPatient extends Backbone.View
  tagName: 'li'

  events:
    'click': 'showRegistryPatient'

  initialize: ->
    @model.on('change', @render, this)

  showRegistryPatient: ->
    Backbone.history.navigate('')

  render: ->
    console.log "rending a detail item"
    template_html = JST['registry_patients/registry_patient'](@model.attributes)
    $(@el).html(template_html)
    this
