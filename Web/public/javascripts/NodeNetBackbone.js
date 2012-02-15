(function() {

  window.NodeNetBackbone = {
    Models: {},
    Collections: {},
    Routers: {},
    Views: {},
    init: function(options) {
      console.log('made it to init');
      NodeNetBackbone.options = options;
      new NodeNetBackbone.Routers.RegistryPatients(options);
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
