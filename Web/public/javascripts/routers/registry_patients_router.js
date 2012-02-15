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
      this.registry_patients = new NodeNetBackbone.Collections.RegistryPatients();
      return this.registry_patients.reset($('#container').data('registry_patients'));
    };

    RegistryPatients.prototype.index = function() {
      var view;
      view = new NodeNetBackbone.Views.RegistryPatients.Index({
        collection: this.registry_patients
      });
      return $('#container').html(view.render().el);
    };

    RegistryPatients.prototype.show = function(id) {
      var view;
      console.log('debug showing patient');
      this.registry_patient = this.registry_patients.get(id);
      return view = new NodeNetBackbone.Views.RegistryPatients.Show({
        model: this.registry_patient
      });
    };

    RegistryPatients.prototype["new"] = function() {};

    RegistryPatients.prototype.edit = function(id) {};

    return RegistryPatients;

  })(Backbone.Router);

}).call(this);
