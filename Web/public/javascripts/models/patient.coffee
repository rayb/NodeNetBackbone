class NodeNetBackbone.Models.Paitent extends Backbone.Model
  paramRoot: 'patient'

  # initialize: (options) ->
  #   @user_id = options.user_id
  #   @pomodori = new Pomodoroservice.Collections.PomodoriCollection
  #   @pomodori.url = "/activities/" + @id + "/pomodori"

  # defaults:
  #   name: null
  #   pomodori_count: 0
  #   pomodori_attributes: []
  #   user_id: null

  # toJSON: ->
  #   # @pomodori_count = @pomodori.length
  #   json  = {activity : @attributes}
  #   pomodori_json = @attributes.pomodori
  #   delete @attributes.pomodori
  #   _.extend json.activity, {pomodori_attributes: pomodori_json}

  # # TODO:  I can't get sync to work...
  # # sync: (method, model, options) ->
  # #   if method is "update"
  # #     console.log("in backbone sync update override")
  # #     # data = @toJSON()
  # #     # data.pomodori_attributes = data.pomodori
  # #     # # model.pomodori.each (pmodel, ix) ->
  # #     # #   data.pomodori_attributes[ix] = pmodel.toJSON()
  # #     # delete data.pomodori
  # #     # console.log ("manipulating json: " + JSON.stringify(data))
  # #     pomodori_json = @attributes.pomodori
  # #     delete @attributes.pomodori
  # #     # _.extend json.activity, {pomodori_attributes: pomodori_json}
  # #     # options = _.extend(data: data, options)
  # #   Backbone.sync.call this, method, this, options

# class Pomodoroservice.Collections.ActivitiesCollection extends Backbone.Collection
  # initialize: (options) ->
  #   console.log("debug init activities collection")
  #   @user_id = options.user_id

  # model: Pomodoroservice.Models.Activity

  # comparator: (activity) ->
  #   activity.get("name").toUpperCase()

  # url: ->
  #       url = "/users/#{@user_id}/activities"
  #       # url += "/#{@id}V" if @id != undefined
  #       # url

