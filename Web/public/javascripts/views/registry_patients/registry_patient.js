(function() {
  var __hasProp = Object.prototype.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  NodeNetBackbone.Views.RegistryPatient = (function(_super) {

    __extends(RegistryPatient, _super);

    function RegistryPatient() {
      RegistryPatient.__super__.constructor.apply(this, arguments);
    }

    RegistryPatient.prototype.template = JST['registry_patients/registry_patient'];

    RegistryPatient.prototype.tagName = 'li';

    RegistryPatient.prototype.events = {
      'click': 'showRegistryPatient'
    };

    RegistryPatient.prototype.initialize = function() {
      return this.model.on('change', this.render, this);
    };

    RegistryPatient.prototype.showRegistryPatient = function() {
      return Backbone.history.navigate('');
    };

    RegistryPatient.prototype.render = function() {
      $(this.el).html(this.template({
        registry_patient: this.model
      }));
      return this;
    };

    return RegistryPatient;

  })(Backbone.View);

}).call(this);
