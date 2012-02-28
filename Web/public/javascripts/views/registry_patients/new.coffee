NodeNetBackbone.Views.RegistryPatients ||= {}

class NodeNetBackbone.Views.RegistryPatients.New extends Backbone.View

  events:
    "submit #new-registry_patient": "save"

  constructor: (options) ->
    super(options)
    @options.model = new @options.collection.model()

    @options.model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()
    # @options.model.unset("errors")
    console.log "@options.model"
    console.log @options.model
    console.log "e"
    console.log e
    console.log "in patient save" + JSON.stringify(@options)
    # attributes = name: $('#new_entry_name').val()
    @options.model.set("first_name" : $('#first_name').val())
    @options.model.set("last_name" : $('#last_name').val())

    console.log "form field for first_name: " + $('#first_name').val()

    @options.collection.create(@options.model.toJSON(),
      success: (model) =>
        @options.model = model
        window.location.hash = ""

      error: (model, jqXHR) =>
        @options.model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    template_html = JST['registry_patients/new'](@options.model.toJSON())
    $(@el).html(template_html)

    # this.$("form").backboneLink(@options.model)

    return this

