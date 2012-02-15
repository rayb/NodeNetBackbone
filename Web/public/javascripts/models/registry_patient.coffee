class NodeNetBackbone.Models.RegistryPatient extends Backbone.Model
  paramRoot: 'registry_patient'

  # initialize: (options) ->
  #   @user_id = options.user_id
  #   @pomodori = new Pomodoroservice.Collections.PomodoriCollection
  #   @pomodori.url = "/activities/" + @id + "/pomodori"

  defaults:
    registry_patient_id: null
    external_patient_id: null
    last_name: null
    first_name: null
    date_of_birth: null
    gender: null
