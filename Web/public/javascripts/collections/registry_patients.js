(function() {
  var __hasProp = Object.prototype.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  NodeNetBackbone.Collections.RegistryPatients = (function(_super) {

    __extends(RegistryPatients, _super);

    function RegistryPatients() {
      RegistryPatients.__super__.constructor.apply(this, arguments);
    }

    RegistryPatients.prototype.model = NodeNetBackbone.Models.RegistryPatient;

    RegistryPatients.prototype.url = '/api/registry_patients';

    return RegistryPatients;

  })(Backbone.Collection);

}).call(this);
