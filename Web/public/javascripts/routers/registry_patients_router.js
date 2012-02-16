(function() {
  var __hasProp = Object.prototype.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  NodeNetBackbone.Routers.RegistryPatients = (function(_super) {

    __extends(RegistryPatients, _super);

    function RegistryPatients() {
      RegistryPatients.__super__.constructor.apply(this, arguments);
    }

    RegistryPatients.prototype.routes = {
      '.*': 'index',
      '/index': 'index',
      '/:id': 'show',
      '/new': 'new',
      '/:id/edit': 'edit'
    };

    RegistryPatients.prototype.initialize = function() {
      console.log('init the router');
      this.registry_patients = new NodeNetBackbone.Collections.RegistryPatients();
      this.registry_patients.reset($('#container').data('registry_patients'));
      return this.index();
    };

    RegistryPatients.prototype.index = function() {
      var view;
      console.log('made it to the route index');
      view = new NodeNetBackbone.Views.RegistryPatients.Index({
        collection: this.registry_patients
      });
      return $('#container').html(view.render().el);
    };

    return RegistryPatients;

  })(Backbone.Router);

}).call(this);
