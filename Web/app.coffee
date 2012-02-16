express = require("express")
routes = require("./routes")
app = module.exports = express.createServer()
app.configure ->
  app.set "views", __dirname + "/views"
  app.set "view engine", "jade"
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use express.cookieParser()
  app.use express.session(secret: "your secret here")
  app.use app.router
  app.use express.static(__dirname + "/public")
  app.use express.errorHandler(
    dumpExceptions: true
    showStack: true
  )

app.configure "development", ->
  app.use express.errorHandler(
    dumpExceptions: true
    showStack: true
  )

app.configure "production", ->
  app.use express.errorHandler()

registry_patients = require("./registry_patients")

app.get "/", routes.index

app.get "/api/registry_patients", (req, res) ->
  res.json registry_patients.all

app.get "/registry_patients", (req, res) ->
  res.render "registry_patients/index",
    locals:
      registry_patients: registry_patients.all

    title: "Patient List"

app.get "/registry_patients/new", (req, res) ->
  res.render "registry_patients/new",
    title: "New Patient"

app.get "/registry_patients/:id", (req, res) ->
  res.render "patients/show",
    title: "Patients"

app.get "/registry_patients/:id/edit", (req, res) ->
  res.render "registry_patients/edit",
    locals:
      patient: patient

app.put "/registry_patients/:id", (req, res) ->
  id = req.params.id
  res.redirect "/patients/" + id

app.post "/registry_patients/", (req, res) ->
  res.redirect "/registry_patients/" + id

port = process.env.PORT or 3000
app.listen port, ->
  console.log "Express test server listening on port %d in %s mode", app.address().port, app.settings.env

