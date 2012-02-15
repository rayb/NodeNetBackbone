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
      return this.index();
    };

    RegistryPatients.prototype.index = function() {
      console.log('made it to the route index');
      return $('#container').html('hello from router');
    };

    return RegistryPatients;

  })(Backbone.Router);

}).call(this);
