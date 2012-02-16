(function() {
  var _base,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
    __hasProp = Object.prototype.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  (_base = NodeNetBackbone.Views).RegistryPatients || (_base.RegistryPatients = {});

  NodeNetBackbone.Views.RegistryPatients.Index = (function(_super) {

    __extends(Index, _super);

    function Index() {
      this.addOne = __bind(this.addOne, this);
      this.addAll = __bind(this.addAll, this);
      Index.__super__.constructor.apply(this, arguments);
    }

    Index.prototype.template = JST["registry_patients/index"]();

    Index.prototype.initialize = function() {
      this.collection.on('reset', this.render, this);
      return this.collection.on('add', this.addOne, this);
    };

    Index.prototype.render = function() {
      var template_html;
      template_html = JST['registry_patients/index']();
      $(this.el).html(template_html);
      this.addAll();
      return this;
    };

    Index.prototype.addAll = function() {
      return this.collection.each(this.addOne);
    };

    Index.prototype.addOne = function(registry_patient) {
      var view;
      view = new NodeNetBackbone.Views.RegistryPatients.RegistryPatient({
        model: registry_patient
      });
      return this.$('tbody').append(view.render().el);
    };

    return Index;

  })(Backbone.View);

}).call(this);
