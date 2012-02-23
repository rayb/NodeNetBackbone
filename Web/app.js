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
    return registry_patients.list((function(content) {
      return res.json(content);
    }));
  });

  app.post("/api/registry_patients", function(req, res) {
    console.log("in the api for post" + req);
    return registry_patients.create(req.body.registry_patient);
  });

  app.get("/registry_patients", function(req, res) {
    console.log("in the registry paitents index");
    return res.render("registry_patients/index", {
      locals: {
        registry_patients: registry_patients.all
      },
      title: "Patient List"
    });
  });

  app.get("/registry_patients/new", function(req, res) {
    return res.render("registry_patients/new", {
      locals: {
        registry_patient: registry_patients["new"]
      },
      title: "New Patient"
    });
  });

  app.get("/registry_patients/:id", function(req, res) {
    var patient;
    console.log("looking for patient with id: " + req.params.id);
    patient = registry_patients.find(req.params.id);
    return res.render("registry_patients/show", {
      locals: {
        registry_patient: patient
      },
      title: "Patient Detail"
    });
  });

  app.get("/registry_patients/:id/edit", function(req, res) {
    var patient;
    patient = registry_patients.find(req.params.id);
    return res.render("registry_patients/edit", {
      locals: {
        registry_patient: patient
      },
      title: "Edit Patient"
    });
  });

  app.put("/registry_patients/:id", function(req, res) {
    var id;
    id = registry_patients.set(req.params.id, req.body.registry_patient);
    return res.redirect("/registry_patients/");
  });

  app.post("/registry_patients/", function(req, res) {
    var id;
    id = registry_patients.insert(req.body.registry_patient);
    return res.redirect("/registry_patients/");
  });

  port = process.env.PORT || 3000;

  app.listen(port, function() {
    return console.log("Express test server listening on port %d in %s mode", app.address().port, app.settings.env);
  });

}).call(this);
