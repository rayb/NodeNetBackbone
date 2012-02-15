NodeNetBackbone.Views.RegistryPatients || = {}

class NodeNetBackbone.Views.RegistryPatients.Index extends Backbone.View
  # template: JST["registry_patients/index"]

  events:
    'submit #new_registry_patient': 'createRegistryPatient'

  initialize: ->
    # TODO: Notice difference between railscasts approach and rails-backbone gem approach
    @collection.on('reset', @render, this)
    @collection.on('add', @addOne, this)

  render: ->
    template = "hello from inedex template text" 
    eco.render(template)
    # $(@el).html(@template(registry_patients: @collection.toJSON() ))
    # @addAll()
    # @

  addAll: () =>
    @collection.each(@addOne)

  addOne: (registry_patient) =>
    view = new NodeNetBackbone.Views.RegistryPatients.RegistryPatient({model: registry_patient})
    @$('tbody').append(view.render().el)
