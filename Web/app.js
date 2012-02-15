(function() {
  var app, port, routes, ﻿express;

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
    app.use(express.static(__dirname + "/public"));
    return app.use(express.errorHandler({
      dumpExceptions: true,
      showStack: true
    }));
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

  app.get("/", routes.index);

  app.get("/patients", function(req, res) {
    return res.render("patients/index", {
      title: "Patients"
    });
  });

  app.get("/patients/new", function(req, res) {
    return res.render("patients/new", {
      title: "New Patient"
    });
  });

  app.get("/patients/:id", function(req, res) {
    return res.render("patients/show", {
      title: "Patients"
    });
  });

  app.get("/patients/:id/edit", function(req, res) {
    return res.render("patients/edit", {
      locals: {
        patient: patient
      }
    });
  });

  app.put("/patients/:id", function(req, res) {
    var id;
    id = req.params.id;
    return res.redirect("/patients/" + id);
  });

  app.post("/patients/", function(req, res) {
    return res.redirect("/patients/" + id);
  });

  port = process.env.PORT || 3000;

  app.listen(port, function() {
    return console.log("Express server listening on port %d in %s mode", app.address().port, app.settings.env);
  });

}).call(this);
