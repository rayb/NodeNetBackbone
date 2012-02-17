(function() {
  var app, port, registry_patients, routes, ﻿express;

  ﻿express = require("express");

  routes = require("./routes");

  app = module.exports = express.createServer();

  app.configure(function() {
    app.set("views", __dirname + "/views");
    app.set("view engine", "jade");
    app.use(express.bodyParser());
    app.use(express.methodOverride());
    app.use(express.cookieParser());
    app.use(express.session({
      secret: "your secret here"
    }));
    app.use(app.router);
    return app.use(express.static(__dirname + "/public"));
  });

  app.configure("development", function() {
    return app.use(express.errorHandler({
      dumpExceptions: true,
      showStack: true
    }));
  });

  app.configure("production", function() {
    return app.use(express.errorHandler());
  });

  registry_patients = require("./registry_patients");

  app.get("/", routes.index);

  app.get("/api/registry_patients", function(req, res) {
    return res.json(registry_patients.all);
  });

  app.get("/registry_patients", function(req, res) {
    return res.render("registry_patients/index", {
      locals: {
        registry_patients: registry_patients.all
      },
      title: "Patient List"
    });
  });

  app.get("/registry_patients/new", function(req, res) {
    return res.render("registry_patients/new", {
      title: "New Patient"
    });
  });

  app.get("/registry_patients/:id", function(req, res) {
    return res.render("patients/show", {
      title: "Patients"
    });
  });

  app.get("/registry_patients/:id/edit", function(req, res) {
    var patient;
    patient = registry_patients.find(id);
    return res.render("registry_patients/edit", {
      locals: {
        patient: patient
      }
    });
  });

  app.put("/registry_patients/:id", function(req, res) {
    var id;
    id = req.params.id;
    return res.redirect("/patients/" + id);
  });

  app.post("/registry_patients/", function(req, res) {
    return res.redirect("/registry_patients/" + id);
  });

  port = process.env.PORT || 3000;

  app.listen(port, function() {
    return console.log("Express test server listening on port %d in %s mode", app.address().port, app.settings.env);
  });

}).call(this);
