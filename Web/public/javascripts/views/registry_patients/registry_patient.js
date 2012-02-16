(function() {
  var _base,
    __hasProp = Object.prototype.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  (_base = NodeNetBackbone.Views).RegistryPatients || (_base.RegistryPatients = {});

  NodeNetBackbone.Views.RegistryPatients.RegistryPatient = (function(_super) {

    __extends(RegistryPatient, _super);

    function RegistryPatient() {
      RegistryPatient.__super__.constructor.apply(this, arguments);
    }

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
      var template_html;
      console.log("rending a detail item");
      template_html = JST['registry_patients/registry_patient'](this.model.attributes);
      $(this.el).html(template_html);
      return this;
    };

    return RegistryPatient;

  })(Backbone.View);

}).call(this);
