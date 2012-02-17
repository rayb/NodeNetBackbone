(function() {

  window.NodeNetBackbone = {
    Models: {},
    Collections: {},
    Routers: {},
    Views: {},
    init: function() {
      console.log('made it to init');
      window.nodeNetBackbone = new NodeNetBackbone.Routers.RegistryPatients();
      if (!Backbone.history.started) {
        Backbone.history.start();
        return Backbone.history.started = true;
      }
    }
  };

  $(document).ready(function() {
    return NodeNetBackbone.init();
  });

}).call(this);
