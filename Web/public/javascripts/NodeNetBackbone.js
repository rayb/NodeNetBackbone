(function() {

  window.NodeNetBackbone = {
    Models: {},
    Collections: {},
    Routers: {},
    Views: {},
    init: function(options) {
      console.log('made it to init');
      new NodeNetBackbone.Routers.RegistryPatients();
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
