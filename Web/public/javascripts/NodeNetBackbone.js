(function() {

  window.NodeNetBackbone = {
    Models: {},
    Collections: {},
    Routers: {},
    Views: {},
    init: function(options) {
      NodeNetBackbone.options = options;
      new NodeNetBackbone.Routers.PatientsRouter(options);
      if (!Backbone.history.started) {
        Backbone.history.start({
          pushState: true
        });
        return Backbone.history.started = true;
      }
    }
  };

  $(document).ready(function() {
    return NodeNetBackbone.init();
  });

}).call(this);
