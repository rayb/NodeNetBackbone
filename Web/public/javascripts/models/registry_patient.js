(function() {
  var __hasProp = Object.prototype.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  NodeNetBackbone.Models.RegistryPatient = (function(_super) {

    __extends(RegistryPatient, _super);

    function RegistryPatient() {
      RegistryPatient.__super__.constructor.apply(this, arguments);
    }

    return RegistryPatient;

  })(Backbone.Model);

}).call(this);
