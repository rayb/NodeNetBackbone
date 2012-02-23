(function() {
  var _base,
    __hasProp = Object.prototype.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  (_base = NodeNetBackbone.Views).RegistryPatients || (_base.RegistryPatients = {});

  NodeNetBackbone.Views.RegistryPatients.New = (function(_super) {

    __extends(New, _super);

    New.prototype.events = {
      "submit #new-registry_patient": "save"
    };

    function New(options) {
      var _this = this;
      New.__super__.constructor.call(this, options);
      this.options.model = new this.options.collection.model();
      this.options.model.bind("change:errors", function() {
        return _this.render();
      });
    }

    New.prototype.save = function(e) {
      var _this = this;
      e.preventDefault();
      e.stopPropagation();
      this.options.model.unset("errors");
      console.log("@options.model");
      console.log(this.options.model);
      console.log("e");
      console.log(e);
      console.log("in patient save" + JSON.stringify(this.options));
      return this.options.collection.create(this.options.model.toJSON(), {
        success: function(model) {
          _this.options.model = model;
          return window.location.hash = "";
        },
        error: function(model, jqXHR) {
          return _this.options.model.set({
            errors: $.parseJSON(jqXHR.responseText)
          });
        }
      });
    };

    New.prototype.render = function() {
      var template_html;
      template_html = JST['registry_patients/new'](this.model);
      $(this.el).html(template_html);
      return this;
    };

    return New;

  })(Backbone.View);

}).call(this);
