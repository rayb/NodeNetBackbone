NodeNetBackbone.Views.RegistryPatients || = {}

class NodeNetBackbone.Views.RegistryPatients.Index extends Backbone.View
  template: JST["registry_patients/index"]()
  # template: EJS({url: 'registry_patients/index.ejs'}).render()
  # html = new EJS({url: '/template.ejs'}).render(data)

  # events:
  #   'submit #new_registry_patient': 'createRegistryPatient'

  initialize: ->
    # TODO: Notice difference between railscasts approach and rails-backbone gem approach
    @collection.on('reset', @render, this)
    @collection.on('add', @addOne, this)

  render: ->
    # template = "<h1>Patients V3 (Backbone) </h1>" 
    # eco.render(template)
    template_html = JST['registry_patients/index']()  
    $(@el).html(template_html)
    @addAll()
    @

  addAll: () =>
    @collection.each(@addOne)

  addOne: (registry_patient) =>
    view = new NodeNetBackbone.Views.RegistryPatients.RegistryPatient({model: registry_patient})
    @$('tbody').append(view.render().el)
